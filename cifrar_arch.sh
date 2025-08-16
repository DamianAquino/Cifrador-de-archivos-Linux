#!/bin/bash

ARCHIVO="$1"
CLAVE_PUB="clave_publica.pem"

AES_KEY="clave_aes.bin"
AES_KEY_ENC="clave_aes.enc"
SALIDA="$ARCHIVO.enc"

openssl rand -out "$AES_KEY" 32
openssl enc -aes-256-cbc -salt -in "$ARCHIVO" -out "$SALIDA" -pass file:"$AES_KEY"
openssl rsautl -encrypt -inkey "$CLAVE_PUB" -pubin -in "$AES_KEY" -out "$AES_KEY_ENC"

rm "$AES_KEY"
echo "Archivo cifrado: $SALIDA"
echo "Clave AES cifrada: $AES_KEY_ENC"

