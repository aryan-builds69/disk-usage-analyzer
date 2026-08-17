#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("===== LINUX SYSTEM INFORMATION =====\n\n");

    printf("Hostname:\n");
    system("hostname");

    printf("\nKernel Information:\n");
    system("uname -a");

    printf("\nUptime:\n");
    system("uptime");

    printf("\nMemory Information:\n");
    system("free -h");

    printf("\nDisk Information:\n");
    system("df -h");

    printf("\n===== SYSTEM INFORMATION COMPLETED =====\n");

    return 0;
}
