function numero() {
  if [[ $1 =~ ^-?[0-9]+$ ]]; then
    return 0
  else
    return 1
  fi
}



jugar=1

while [ $jugar -eq 1 ]; do
  read -p "Ingrese un número para adivinar:" num
 

  adivinado=0
clear

while ! numero $num; do
clear

  echo "No as ingresado un numero entero" 
  read -p "Ingresa el numero nuevamente:" num
  
  clear
done
  while [ $adivinado -eq 0 ]; do
    read -p "Adivine el número:" numuser
     
while ! numero $numuser; do
clear

  echo "No as ingresado un numero entero" 
  read -p "Ingresa el numero ah adivinar:" numuser
  
  clear
done
    if [ $numuser -eq $num ]; then
      echo "¡Felicitaciones! el numero a adivinar era el ( $numuser ) Adivinaste el número."
      adivinado=1
    else
      echo "El número ingresado es incorrecto."
      read -p "¿Quieres volver a intentarlo? (s/n) " respuesta
      if [[ $respuesta == "s" ]]; then
      clear
        continue
      else
        read -p "¿Quieres ingresar otro número para adivinar? (s/n) " respuesta2
        if [[ $respuesta2 == "s" ]]; then
          break
        else
          adivinado=1
        fi
      fi
    fi
  done

  read -p "¿Quieres jugar de nuevo? (s/n) " respuesta3
  if [[ $respuesta3 == "s" ]]; then
  clear
    jugar=1
  else
    jugar=0
  fi
done
