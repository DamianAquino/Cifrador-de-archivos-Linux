openssl genpkey -algorithm RSA -out clave_privada.pem -pkeyopt rsa_keygen_bits:2048
openssl rsa -in clave_privada.pem -pubout -out clave_publica.pem
