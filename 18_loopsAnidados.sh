# ! /bin/bash
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
