#include<stdio.h>
#include<

void *runner (void *param); /* threads call this function
int main (int arge, char
*argvIl)
I
thread t tid; /* the thread identifier
*
thread attr t attr: /*
set of thread attributes
*/
if (arge |= 2)
fprintf(stderr,"
"usage: a.out «integer value›ln"):
return -1;
if (atoi (argv[1]) < 0)
I
fprintf(stderr,"}d must be ›= O\n", atoi (argy(1])) a