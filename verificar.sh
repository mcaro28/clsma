#!/bin/bash
 
if pidof -x $(basename $0) > /dev/null; then
  for p in $(pidof -x $(basename $0)); do
    if [ $p -ne $$ ]; then
      echo "El script $0 ya se está ejecutando. Saliendo..."
      exit
    fi
  done
fi

cd "/usr/lib/jvm/jdk1.7.0_80/jre/bin"
./java -jar "/home/alice/Descargas/Clsmaservices/dist/smaServer.jar"
