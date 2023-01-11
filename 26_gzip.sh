# ! /bin/bash
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

