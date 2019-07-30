#include <stdio.h>

#define NRW        20     // number of reserved words
#define TXMAX      500    // length of identifier table
#define MAXNUMLEN  14     // maximum number of digits in numbers
#define NSYM       17     // maximum number of symbols in array ssym and csym
#define MAXIDLEN   10     // length of identifiers

#define MAXADDRESS 32767  // maximum address
#define MAXLEVEL   32     // maximum depth of nesting block
#define CXMAX      500    // size of code array

#define MAXSYM     51     // maximum number of symbols  

#define STACKSIZE  1000   // maximum storage

enum symtype
{
	SYM_NULL,
	SYM_IDENTIFIER,
	SYM_YINGYONG,
	SYM_NUMBER,
	SYM_PLUS,
	SYM_MINUS,
	SYM_TIMES,
	SYM_SLASH,
	SYM_ODD,
	SYM_EQU,
	SYM_NEQ,
	SYM_LES,
	SYM_LEQ,
	SYM_GTR,
	SYM_GEQ,
	SYM_LPAREN,
	SYM_RPAREN,
	SYM_COMMA,
	SYM_SEMICOLON,
	SYM_PERIOD,
	SYM_BECOMES,
	SYM_AE,
	SYM_ME,
	SYM_AA,
	SYM_MM,
    SYM_BEGIN,
	SYM_END,
	SYM_IF,
	SYM_THEN,
	SYM_WHILE,
	SYM_DO,
	SYM_CALL,
	SYM_CONST,
	SYM_VAR,
	SYM_PROCEDURE,
	SYM_AND,SYM_OR,SYM_NOT,
	SYM_ELSE,SYM_FOR,SYM_BREAK,SYM_EXIT,SYM_READ,SYM_WRITE,
	SYM_LSPAREN,SYM_RSPAREN,SYM_MOD,SYM_LS,SYM_RS,SYM_PPLUS,SYM_MMIN
};

enum idtype
{
	ID_CONSTANT, ID_VARIABLE, ID_PROCEDURE,ID_YINYONG
};

enum opcode
{
	LIT, OPR, LOD, STO, CAL, INT, JMP, JPC,JPNC,LDA,STA,RDA,WTA,READ,WRITE
};

enum oprcode
{
	OPR_RET, OPR_NEG, OPR_ADD, OPR_MIN,
	OPR_MUL, OPR_DIV, OPR_ODD, OPR_EQU,
	OPR_NEQ, OPR_LES, OPR_LEQ, OPR_GTR,
	OPR_GEQ, OPR_NOT, OPR_WEN, OPR_WRITE,
	OPR_MOD, OPR_ADDPLUS, OPR_SUBPLUS,
	OPR_LS,OPR_RS,OPR_PPLUS,OPR_MMIN
};


typedef struct
{
	int f; // function code
	int l; // level
	int a; // displacement address
} instruction;

//////////////////////////////////////////////////////////////////////
char* err_msg[] =
{
/*  0 */    "",
/*  1 */    "Found ':=' when expecting '='.",
/*  2 */    "There must be a number to follow '='.",
/*  3 */    "There must be an '=' to follow the identifier.",
/*  4 */    "There must be an identifier to follow 'const', 'var', or 'procedure'.",
/*  5 */    "Missing ',' or ';'.",
/*  6 */    "Incorrect procedure name.",
/*  7 */    "Statement expected.",
/*  8 */    "Follow the statement is an incorrect symbol.",
/*  9 */    "'.' expected.",
/* 10 */    "';' expected.",
/* 11 */    "Undeclared identifier.",
/* 12 */    "Illegal assignment.",
/* 13 */    "':=' expected.",
/* 14 */    "There must be an identifier to follow the 'call'.",
/* 15 */    "A constant or variable can not be called.",
/* 16 */    "'then' expected.",
/* 17 */    "';' or 'end' expected.",
/* 18 */    "'do' expected.",
/* 19 */    "Incorrect symbol.",
/* 20 */    "Relative operators expected.",
/* 21 */    "Procedure identifier can not be in an expression.",
/* 22 */    "Missing ')'.",
/* 23 */    "The symbol can not be followed by a factor.",
/* 24 */    "The symbol can not be as the beginning of an expression.",
/* 25 */    "The number is too great.",
/* 26 */    "The error is missing '('",
/* 27 */    "Need identifier",
/* 28 */    "Need a var",
/* 29 */    "",
/* 30 */    "",
/* 31 */    "",
/* 32 */    "There are too many levels."
};

//////////////////////////////////////////////////////////////////////
char ch;         // last character read
int  sym;        // last symbol read
char id[MAXIDLEN + 1]; // last identifier read
int  num;        // last number read
int  cc;         // character count
int  ll;         // line length
int  kk;
int  err;
int  cx;         // index of current instruction to be generated.
int  level = 0;
int  tx = 0;

char line[80];

instruction code[CXMAX];

char* word[NRW + 1] =
{
	"", /* place holder */
	"begin", "call", "const", "do", "end","if",
	"odd", "procedure", "then", "var", "while","and","or","not","else","for","break","exit","read","write"
};

int wsym[NRW + 1] =
{
	SYM_NULL, SYM_BEGIN, SYM_CALL, SYM_CONST, SYM_DO, SYM_END,
	SYM_IF, SYM_ODD, SYM_PROCEDURE, SYM_THEN, SYM_VAR, SYM_WHILE,SYM_AND,SYM_OR,SYM_NOT,
	SYM_ELSE,SYM_FOR,SYM_BREAK,SYM_EXIT,SYM_READ,SYM_WRITE
};

int ssym[NSYM + 1] =
{
	SYM_NULL, SYM_PLUS, SYM_MINUS, SYM_TIMES, SYM_SLASH,
	SYM_LPAREN, SYM_RPAREN, SYM_EQU, SYM_COMMA, SYM_PERIOD, SYM_SEMICOLON,
	SYM_AND,SYM_OR,SYM_NOT,SYM_LSPAREN,SYM_RSPAREN,SYM_MOD,SYM_YINGYONG
};

char csym[NSYM + 1] =
{
	' ', '+', '-', '*', '/', '(', ')', '=', ',', '.', ';','&','|','!','[',']','%','^'
};

#define MAXINS   15
char* mnemonic[MAXINS] =
{
	"LIT", "OPR", "LOD", "STO", "CAL", "INT", "JMP", "JPC","JPNC","LDA","STA","RDA","WTA","READ","WRITE"
};
//LDA:加载数组值到栈顶
//STA：存储数组值到偏移地址上

typedef struct
{
	char name[MAXIDLEN + 1];
	int  kind;
	int  value;
} comtab;

comtab table[TXMAX];

typedef struct
{
	char  name[MAXIDLEN + 1];
	int   kind;
	short level;
	short address;
} mask;
int true_out[4][10]={0};
int false_out[4][10]={0};
int true_count[4]={0};
int false_count[4]={0};
int condition_level=0;
int sym_count=0;                  //预知的符号数目
int sym_stack[10];                //预知的符号
int break_count=0;
int break_cx[4]={0};
FILE* infile;
// EOF PL0.h
