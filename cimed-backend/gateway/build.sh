#!/bin/bash

# Obtener la ruta del script actual
rootpath="$(cd "$(dirname "$0")" && pwd)"

chmod +x "$rootpath/gradlew"

# Ejecutar el build de Gradle sin ejecutar pruebas
./gradlew clean build -x test

# Esperar 1 segundo
sleep 1

# Crear la carpeta release si no existe
mkdir -p "$rootpath/release"

echo "Copying jar file to release folder"

# Copiar el archivo JAR generado al directorio release
for f in "$rootpath/build/libs/"*SNAPSHOT.jar; do
    cp -f "$f" "$rootpath/release/application.jar"
done

echo "Build completed"
