#!/bin/bash

# Obtener la ruta del script actual
rootpath="$(cd "$(dirname "$0")" && pwd)"

chmod +x build-backend.sh

cd "$rootpath/cimed-backend"

appointment_service_path="$PWD/appointment-service"
gateway_service_path="$PWD/gateway"
discovery_service_path="$PWD/discovery-service"
patient_service_path="$PWD/patient-service"
doctor_service_path="$PWD/doctor-service"

echo "Building backend services"

echo "Building appointment service"
cd "$appointment_service_path"
./build.sh

echo "Building gateway service"
cd "$gateway_service_path"
./build.sh

echo "Building discovery service"
cd "$discovery_service_path"
./build.sh

echo "Building patient service"
cd "$patient_service_path"
./build.sh

echo "Building doctor service"
cd "$doctor_service_path"
./build.sh

echo "Backend services build completed"
cd "$rootpath"
