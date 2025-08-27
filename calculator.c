#include <stdio.h>
#include <stdlib.h>
#include "arithmetic.h"

int main(int argc, char *argv[])
{
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    printf("%d + %d = %d\n", a, b, a+b);
    printf("%d - %d = %d\n", a, b, a-b);
    printf("%d * %d = %d\n", a, b, a*b);
    if (b != 0)
        printf("%d / %d = %d\n", a, b, a/b);
    else
        printf("Division by zero is undefined.\n");

    return 0;
}
