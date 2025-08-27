#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[])
{
    if (argc < 3) {
        fprintf(stderr, "Usage: %s <num1> <num2>\n", argv[0]);
        return 1;
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    printf("%d + %d => %d\n", a, b, a + b);
    printf("%d - %d => %d\n", a, b, a - b);
    printf("%d * %d => %d\n", a, b, a * b);

    if (b != 0)
        printf("%d / %d => %d\n", a, b, a / b);
    else
        printf("Division by zero is undefined.\n");

    return 0;
}