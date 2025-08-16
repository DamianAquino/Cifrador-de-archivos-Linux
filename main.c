#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/pem.h>
#include <openssl/rsa.h>
#include <openssl/err.h>

int main(int argc, char *argv[])
{
    char comando_cifrado[256];
    snprintf(comando_cifrado, sizeof(comando_cifrado), "./cifrar_arch.sh %s", argv[1]);
    system(comando_cifrado);

    return 0;
}
