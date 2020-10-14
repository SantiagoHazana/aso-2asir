@echo off
choice /m "Mensaje"
if errorlevel 2 echo "error 2"
if errorlevel 1 echo "error 1"