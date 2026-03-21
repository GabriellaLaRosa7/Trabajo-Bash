while true
do
	for nombre in "$HOME/EPNro1/entrada/"*.txt; do
		[ -e "$nombre" ] || continue
		[ -e "$HOME/EPNro1/salida/$FILENAME.txt" ] || touch "$HOME/EPNro1/salida/$FILENAME.txt"
		cat "$nombre">>"$HOME/EPNro1/salida/$FILENAME.txt"
		mv "$nombre" "$HOME/EPNro1/procesado/"

	done
	sleep 5
done

# La variable nombre, es el nombre de cada archivo que entre en entrada, ya que con entrada/*.txt, vamos a ir seleccionando
# solo los archivos terminados en .txt, que son los que nos interesan. Luego, muestro el contenido de cada archivo, para ello
# uso "#nombre" que es la manera de seleccionar la variable, y la cateo, y mando ese cateo a un archivo. Este archivo queda
# salida/ y esta dentro de la variable FILENAME, La sintaixis especifica eso. Por ùltimo muevo, el archivo seleccionado a
# la directorio procesado. Se supone que todo esto lo corremos desde el EPNro1.
# Para correr el archivo en background, debemos poner sh consolidar.sh &, cuando toquen opcion 2.
