# ! /bin/bash
# Programa para capturar información del usuario y validarla utilizando expresiones regulares
# Autor: Ignacio D. González - @ignaciodamiang

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|US|COL|AR$'
# Regex for birthday
fechaNacimientoRegex='^[12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$'

echo "expresiones regulares"
read -p "Ingresar identificacion: " identificacion
read -p "Ingresar iniciales pais (EC, US, COL, AR): " pais
read -p "Ingresar la fecha de nacimiento (yyyyMMdd): " fechaNacimiento

# Validacion Identificacion

if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacio $identificacion válida"
else
    echo "Identificacion $identificacion invalida" 
fi

# Validacion pais

if [[ $pais =~ $paisRegex ]]; then
    echo "pais $pais valido"
else
    echo "pais $pais invalido"
fi

# validacion fecha nacimiento

if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]];then
    echo "Fecha nacimiento $fechaNacimiento es valida"
else
    echo "Fecha nacimiento $fechaNacimiento invalida"
fi
