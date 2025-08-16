#!/bin/bash

ARCHIVO_ENC="$1"
CLAVE_AES_ENC="clave_aes.enc"
CLAVE_PRIV="clave_privada.pem"

AES_KEY="clave_aes_descifrada.bin"
SALIDA="descifrado.txt"

openssl rsautl -decrypt -inkey "$CLAVE_PRIV" -in "$CLAVE_AES_ENC" -out "$AES_KEY"
openssl enc -d -aes-256-cbc -in "$ARCHIVO_ENC" -out "$SALIDA" -pass file:"$AES_KEY"

rm "$AES_KEY"
echo "Archivo descifrado: $SALIDA"
