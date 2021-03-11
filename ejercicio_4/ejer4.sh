#!/bin/bash

#-----------------------------------#
#-------------FJavierMP-------------#
#   https://github.com/fjaviermp/   #
#-------------FJavierMP-------------#
#-----------------------------------#

if [ $# -eq 1 ]
    then
    if [ -f $1 ]
        then
            while [ "$opcion" != "C" ] && [ "$opcion" != "B" ] && [ "$opcion" != "M" ] && [ "$opcion" != "V" ];
                do
                    echo "Selecciona una accion para realizar"
                    echo "-------------------------------------------"
                    echo "Opcion C: Copiar fichero a un directorio"
                    echo "Opcion B: Borrar el fichero"                      #del directorio donde esté ubicado
                    echo "Opcion M: Mover el fichero a un directorio"        #que se pedirá por teclado
                    echo "Opcion V: Visualizará un fichero"                 #pasado por parámetro
                    echo "-------------------------------------------"
                    read opcion
                        case $opcion in
                        C* | c*)
                            echo "-------------------------------------------"
                            echo "Has elegido copiar el fichero a un directorio"
                            echo "Introduce el directorio donde deseas copiarlo"
                            echo "-------------------------------------------"
                            read dir
                                if [ -d $dir ];then
                                    cp $1 $dir
                                    echo "El fichero" $1 "se ha copiado en" $dir
                                else 
                                    echo "ERROR, ese directorio no existe" 
                                    exit 
                                fi
                            ;;
                        B* | b*)
                            echo "-------------------------------------------"
                            echo "Has elegido borrar el fichero"
                                rm $1
                            echo "Fichero eliminado correctamente"
                            echo "-------------------------------------------"
                            ;;
                        M* | m*)
                            echo "-------------------------------------------"
                            echo "Has elegido mover el fichero"
                            echo "Introduce el directorio donde moverlo"
                            echo "-------------------------------------------"
                            read dir
                                if [ -d $dir ];then
                                    mv $1 $dir
                                    echo "El fichero se ha movido correctamente a" $dir
                                else 
                                    echo "ERROR, el directorio especificado no existe"
                                    exit   
                                fi
                            ;;
                        V* | v*)
                            echo "-------------------------------------------"
                            echo "Has elegido visualizar el fichero"
                            echo "La informacion de" $1 "es:"
                            echo ls -l $1
                            echo "" #saltos de linea
                            echo "Su contenido es:"
                            cat $1
                            echo "" #saltos de linea
                            echo "-------------------------------------------"
                            ;;
                        *)
                            echo ""
                            echo "---------------------ERROR---------------------"
                            echo "|   Escoge una opcion valida,C, B, M o V      |"
                            echo "---------------------ERROR---------------------"
                            echo ""
                            ;;
                        esac
                done

        else
            echo "ERROR, No existe el fichero en la ruta actual"
            exit
    fi
else
    echo "ERROR: solo puedes introducir un parametro en el script"
    exit
fi