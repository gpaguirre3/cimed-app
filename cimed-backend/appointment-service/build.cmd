@echo off
pushd %~dp0
set rootpath=%CD%
popd

REM Ejecutar el build de Gradle sin ejecutar pruebas
@Call gradlew.bat clean build -x test

timeout /t 1 /nobreak > NUL
mkdir "%rootpath%/release" 2> NUL

echo "Copying jar file to release folder"

for %%f in ("%rootpath%\build\libs\*SNAPSHOT.jar") do (
    copy /Y "%%f" "%rootpath%\release\application.jar"
)

echo "Build completed"
