@echo off
pushd %~dp0
set rootpath=%CD%
popd

cd %rootpath%\cimed-backend
set appointment_service_path=%CD%\appointment-service
set gateway_service_path=%CD%\gateway
set discovery_service_path=%CD%\discovery-service
set patient_service_path=%CD%\patient-service
set doctor_service_path=%CD%\doctor-service

echo "Building backend services"

echo "Building auth service"
cd %appointment_service_path%
@Call build.cmd

echo "Building gateway service"
cd %gateway_service_path%
@Call build.cmd

echo "Building discovery service"
cd %discovery_service_path%
@Call build.cmd

echo "Building patient service"
cd %patient_service_path%
@Call build.cmd

echo "Building doctor service"
cd %doctor_service_path%
@Call build.cmd

echo "Backend services build completed"
cd %rootpath%