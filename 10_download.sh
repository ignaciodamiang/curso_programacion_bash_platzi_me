10_reto2.sh                                                                                         0000764 0001750 0000041 00000001020 14357525572 012030  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               #!/usr/bin/env bash
# Gets personal info and then print it
# Carlos Velasquez - @crlosvelaquez

name=""
lastname=""
age=""
address=""
cellphone=""

echo "Type your data:"
read -p "What is your name? " name
read -p "What is your lastname? " lastname
read -p "How old are you? " age
read -p "Where do you live? " address
read -p "What is your cellphone? " cellphone

echo -e "\n"
echo "Your data: "
echo "Her/His name is $name $lastname"
echo "She/He is $age"
echo "She/He lives in $address"
echo "Her/His cellphone is $cellphone"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                11_ifElseIfElse.sh                                                                                  0000775 0001750 0000041 00000000636 14357533564 013313  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisi??n if, else if, else
# Autor: Marco Toscano Freire - @martosfre

edad=0

echo "Ejemplo Sentencia If -else"
read -p "Indique c??al es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi


                                                                                                  11_ifElse.sh                                                                                        0000775 0001750 0000041 00000001021 14357525152 012202  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisi??n if, else
# Autor: Marco Toscano Freire - @martosfre

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique c??al es su nota (1-9):" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique c??al es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona no puede sufragar"
else
    echo "La persona puede sufragar"
fi


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               11_reto3.sh                                                                                         0000764 0001750 0000041 00000001223 14357533606 012034  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               #!/bin/bash

# Program:
#    This program asks the user to enter a number between 1 and 5.
#    If the user enters a number between 1 and 5, the program displays
#    the corresponding message.

entered_number=0


read -n1 -p "Enter a number between 1 and 5: " entered_number
echo -e "\n"

if [ $entered_number -eq 1 ]; then
    echo "You entered 1"
elif [ $entered_number -eq 2 ]; then
    echo "You entered 2"
elif [ $entered_number -eq 3 ]; then
    echo "You entered 3"
elif [ $entered_number -eq 4 ]; then
    echo "You entered 4"
elif [ $entered_number -eq 5 ]; then
    echo "You entered 5"
else
    echo "You did not enter a number between 1 and 5"
fi                                                                                                                                                                                                                                                                                                                                                                             12_ifAnidados.sh                                                                                    0000775 0001750 0000041 00000001137 14357534344 013050  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el uso de los ifs anidados
# Autor: Marco Toscano Freire - @martosfre

notaClase=0
continua=""

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique c??al es su nota (1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Si va continuar estudiando en el siguiente nivel (s/n):" continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte !!!"
    fi    
else
    echo "El alumno reprueba la materia"
fi



                                                                                                                                                                                                                                                                                                                                                                                                                                 13_expresionesCondicionales.sh                                                                      0000775 0001750 0000041 00000001737 14357535563 016061  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: Marco Toscano Freire - @martosfre

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pa??s:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones Condicionales con n??meros"
if [ $edad -lt 10 ]; then
    echo "La persona es un ni??o o ni??a"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur de Am??rica"
else
    echo "Se desconoce la nacionalidad"
fi



echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else 
    echo "El directorio $pathArchivo no existe"
fi    

                                 14_case.sh                                                                                          0000775 0001750 0000041 00000000644 14357537322 011725  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Marco Toscano Freire - @martosfre


opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opci??n de la A - Z:" opcion
echo -e "\n"

case $opcion in
    A) echo -e "\nOperaci??n Guardar Arhivo";;
    B) echo "Operaci??n Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operaci??n";;
    *) "Opci??n Incorrecta"
esac    

                                                                                            15_arreglos.sh                                                                                      0000775 0001750 0000041 00000002013 14357537415 012624  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de los arreglos
# Autor: Marco Toscano Freire - @martosfre

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de N??meros:${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de N??meros:${arregloRangos[*]}"

#Imprimir los tama??os de los arreglos
echo "Tama??o Arreglo de N??meros:${#arregloNumeros[*]}"
echo "Tama??o Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tama??o Arreglo de N??meros:${#arregloRangos[*]}"

#Imprimir la posici??n 3 del arreglo de n??meros, cadenas de rango
echo "Posici??n 3 Arreglo de N??meros:${arregloNumeros[3]}"
echo "Posici??n 3 Arreglo de Cadenas:${arregloCadenas[3]}"
echo "Posici??n 3 Arreglo de Rangos:${arregloRangos[3]}"

#A??adir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de N??meros:${arregloNumeros[*]}"
echo "Tama??o arreglo de N??meros:${#arregloNumeros[*]}"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     16_forLoop.sh                                                                                       0000775 0001750 0000041 00000001211 14357542002 012412  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteraci??n for
# Autor: Marco Toscano Freire - @martosfre

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la Lista de N??meros"
for num in ${arregloNumeros[*]}
do
    echo "N??mero:$num"
done

echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done

echo "Iterar en Archivos"
for fil in *
do
    echo "Nombre archivo:$fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre archivo:$fil"
done

echo "Iterar utilizando el formato tradcional"
for ((i=1; i<10; i++))
do
    echo "N??mero;$i"
done


                                                                                                                                                                                                                                                                                                                                                                                       17_whileLoop.sh                                                                                     0000775 0001750 0000041 00000000361 14357542346 012755  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteraci??n while
# Autor: Marco Toscano Freire - @martosfre

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done


                                                                                                                                                                                                                                                                               18_loopsAnidados.sh                                                                                 0000775 0001750 0000041 00000000371 14357546144 013614  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: Marco Toscano Freire - @martosfre

echo "Loops Anidados"
for fil in $(ls)
do
    for numero in {1..4}
    do
        echo "Nombre archivo:$fil _ $numero"
    done
done
                                                                                                                                                                                                                                                                       19_breakContinue.sh                                                                                 0000775 0001750 0000041 00000000632 14357547136 013611  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Marco Toscano Freire - @martosfre

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done
                                                                                                      1_comments.sh                                                                                       0000775 0001750 0000041 00000000305 14357522726 012547  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               #! /bin/bash
# PROGRAMA: U-POSG
echo "Programa Utilidades Postgres"
    <<"COMENTARIO 1"
    Programa para administrar las utilidades de la Base
    de Datos Postgres
   "COMENTARIO 1"
    
exit 0
                                                                                                                                                                                                                                                                                                                           1_utilityPostgres.sh                                                                                0000775 0001750 0000041 00000000211 14357522726 014150  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para realizar algunas operaciones utilitarios de Postgres

echo "Hola bienvenido al curso de Programaci??n bash"
                                                                                                                                                                                                                                                                                                                                                                                       20_menuOpciones.sh                                                                                  0000775 0001750 0000041 00000002354 14357551422 013450  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa que permite manejar las utilidades de Postres
# Autor: Marco Toscano Freire - @martosfre

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el men?? de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "                MEN?? PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar informaci??n
    read -n1 -p "Ingrese una opci??n [1-5]:" opcion

    #Validar la opci??n ingresada
    case $opcion in
        1)
            echo -e "\nInstalar postgres....."
            sleep 3
            ;;
        2) 
            echo -e "\nDesinstalar postgres...."
            sleep 3
            ;;
        3) 
            echo -e "\nSacar respaldo..."
            sleep 3
            ;;
        4) 
            echo -e "\nRestaurar respaldo..."
            sleep 3
            ;;
        5)  
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done    
                                                                                                                                                                                                                                                                                    20_reto4.sh                                                                                         0000764 0001750 0000041 00000004237 14357547777 012063  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               #!/bin/bash
#Programa para validar procesos, memoria, recursos, variables.
#by: devp
echo ""
echo "**** PROGRAMA VALIDACI??N RECURSOS ****"
echo ""
opcion=0

while :
do
        #Limpiar Pantalla
        clear
        echo " * Men?? Principal * "
        echo ""
        echo "1)Proceso Actuales "
        echo "2)Memoria Disponible "
        echo "3)Espacio en disco "
        echo "4)Informacion Red"
        echo "5)Variables de entorno configuradas "
        echo "6)Informaci??n Programa "
        echo "7)Comprimir Arcivos SH"
        echo "8)Salir "
        echo ""
        #Leer datos de usuario
        read -n1 -p "Ingrese la opci??n a seleccionar (1 - 8): " opcion
        #Validar opci??n ingresada
        case $opcion in
                1)
                        echo -e "\n..Procesos Actuales.."
                        ps axu
                        sleep 3
                        ;;
                2)
                        echo -e "\n..Memoria Disponible.."
                        free
                        sleep 3
                        ;;
                3)
                        echo -e "\n..Espacion en disco.."
                        df -h
                        sleep 3
                        ;;
                4)
                        echo -e "\n..Informaci??n Red.."
                        ifconfig -a
                        sleep 3
                        ;;
                5)
                        echo -e "\n..Variables de Entorno Configuradas.."
                        #printenv
                        env -u VAR
                        sleep 3
                        ;;
                6)
                        echo -e "\n..Informaci??n Programa.."
                        dpkg -l | more
                        sleep 3
                        ;;
                7)
                        echo -e "\n..Comprimiendo Archivos.."
                        tar -czvf archivosCompresos.tar.gz *
                        echo -e "\n SUCESS!!"
                        sleep 3
                        ;;
                8)
                        echo -e "\n..Saliendo, ????Gracias!!"
                        exit 0
                        ;;
        esac
done                                                                                                                                                                                                                                                                                                                                                                 21_archivosDirectorios.sh                                                                           0000775 0001750 0000041 00000000612 14357551446 015033  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar la creaci??n de archivos y directorios
# Autor: Marco Toscano Freire - @martosfre

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 == "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opci??n: $1"
 fi
                                                                                                                      22_writeFile.sh                                                                                     0000775 0001750 0000041 00000000364 14357554224 012742  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Marco Toscano Freire - @martosfre

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Adici??n multil??nea
cat <<EOM >> $1
$2
EOM
                                                                                                                                                                                                                                                                            23_readFile.sh                                                                                      0000775 0001750 0000041 00000001060 14357556340 012517  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Marco Toscano Freire - @martosfre

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo -e "\nLeer archivos l??nea por l??nea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1 # < $1 es para indicar que el archivo que se va a leer es el que se pasa como par??metro                                                                                                                                                                                                                                                                                                                                                                                                                                                                                24_fileOperations.sh                                                                                0000775 0001750 0000041 00000000741 14357557640 014001  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Autor: Marco Toscano Freire - @martosfre

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicaci??n: $HOME"
mv backupScripts $HOME

cd $HOME/backupScripts/

echo -e "\nEliminar los archivos .txt"
rm -rf *.txt                               24_reto5.sh                                                                                         0000764 0001750 0000041 00000000547 14357560163 012050  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Reto 5. Generar un archivo log, escribir dentro de este archivo el usuario, y la fecha de log en formato yyyy_MM_DD_HH_mm_ss
# Autor: Luis Xavier

echo "Generating log file..."
touch log.txt

echo "Registering login..."
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%S)

echo "$user/$date" >> log.txt

sleep 1
echo -e "Login Registered\n"
cat log.txt                                                                                                                                                         25_tar.sh                                                                                           0000775 0001750 0000041 00000000333 14357560501 011570  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Marco Toscano Freire - @martosfre

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh


                                                                                                                                                                                                                                                                                                     26_gzip.sh                                                                                          0000775 0001750 0000041 00000001022 14357562062 011754  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: Marco Toscano Freire - @martosfre

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

# Prueba con 9_options.sh.copy
cp 9_options.sh 9_options.sh.copy
echo "Empaquetar un solo archivo, slowest compression level" # gzip -9 best compression. Default compression level is -6
gzip -9 9_options.sh.copy

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              27_pbzip2.sh                                                                                        0000775 0001750 0000041 00000000521 14357560501 012211  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Marco Toscano Freire - @martosfre

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2

                                                                                                                                                                               2_variables_2.sh                                                                                    0000775 0001750 0000041 00000000251 14357522726 013114  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para revisar la declaraci??n de variables
# Autor: Marco Toscano Freire - @martosfre

echo "Opci??n nombre pasada del script anterior: $nombre"

                                                                                                                                                                                                                                                                                                                                                       2_variables.sh                                                                                      0000775 0001750 0000041 00000000527 14357522726 012701  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # !/bin/bash
# Programa para revisar la declaraci??n de variables
# Autor: Marco Toscano Freire - @martosfre

opcion=0
nombre=Marco

echo "Opci??n: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los dem??s procesos
export nombre

# Llamar al siguiente script para recuperar la variable
./2_variables_2.sh
                                                                                                                                                                         3_tipoOperadores.sh                                                                                 0000775 0001750 0000041 00000001643 14357522727 013732  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para revisar los tipos de operadores
# Autor: Marco Toscano - @martosfre

numA=10
numB=4

echo "Operadores Aritm??ticos"
echo "N??meros: A=$numA y B=$numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo -e "\nOperadores Relaciones"
echo "N??meros: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))


echo -e "\nOperadores Asignaci??n"
echo "N??meros: A=$numA y B=$numB"
echo "Sumar A += B" $((numA += numB))
echo "Restar A -= B" $((numA -= numB))
echo "Multiplicaci??n A *= B" $((numA *= numB))
echo "Dividir A /= B" $((numA /= numB))
echo "Residuo A %= B" $((numA %= numB))

                                                                                             4_argumentos.sh                                                                                     0000775 0001750 0000041 00000000471 14357522727 013116  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Marco Toscano Freire - @martosfre

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El n??mero de par??metros enviados es: $#"
echo "Los par??metros enviados son: $*"
                                                                                                                                                                                                       5_subtitucionComand.sh                                                                              0000775 0001750 0000041 00000000522 14357522727 014422  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para revisar como ejecutar comados dentro de un programa y almacenar en una variable para su posterior utilizaci??n 
# Autor: Marco Toscano Freire - @martosfre

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicaci??n actual es la siguiente: $ubicacionActual"
echo "Informaci??n del Kernel: $infoKernel"
                                                                                                                                                                              6_readEcho.sh                                                                                       0000775 0001750 0000041 00000000626 14357522727 012450  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como capturar la informaci??n del usuario utilizando el comando echo, read y $REPLY
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opci??n:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opci??n:$option , backupName:$backupName"
                                                                                                          6_reto1.sh                                                                                          0000764 0001750 0000041 00000000113 14357527101 011744  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               #! /bin/bash

option=$1
result=$2

echo -e "option= $1\n"
echo "result= $2"                                                                                                                                                                                                                                                                                                                                                                                                                                                     7_read.sh                                                                                           0000775 0001750 0000041 00000000557 14357522727 011655  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como capturar la informaci??n del usuario utilizando el comando read
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opci??n:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opci??n:$option , backupName:$backupName"
                                                                                                                                                 8_readValidate.sh                                                                                   0000775 0001750 0000041 00000000765 14357522727 013331  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como capturar la informaci??n del usuario y validarla
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de informaci??n de solo un caracter
read -n1 -p "Ingresar una opci??n:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opci??n:$option , backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"


           8_regularExpression.sh                                                                              0000764 0001750 0000041 00000002026 14357522727 014453  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para capturar informaci??n del usuario y validarla utilizando expresiones regulares
# Autor: Ignacio D. Gonz??lez - @ignaciodamiang

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
    echo "Identificacio $identificacion v??lida"
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          9_options.sh                                                                                        0000775 0001750 0000041 00000000723 14357522727 012432  0                                                                                                    ustar   idg                             www-data                                                                                                                                                                                                               # ! /bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con sin par??metros
# Autor: Marco Toscano - @martosfre


echo "Programa Opciones"
echo "Opci??n 1 enviada: $1"
echo "Opci??n 2 enviada: $2"
echo "Opci??n enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b option utilizada";;
-c) echo "-c option utlizada";;
*) echo "$1 no es una opci??n";;
esac
shift
done
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             