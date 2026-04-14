@echo off
title Minecraft 1.2.5 Server - Java 8

set "JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-8.0.482.8-hotspot"
set "Path=%JAVA_HOME%\bin;%Path%"

echo ================================================
echo [1] Git Pull (서버 시작 전 최신화)
echo ================================================
git pull

echo.
echo Java 버전 확인:
java -version

echo.
echo ================================================
echo [2] 서버 시작
echo ================================================

java -Xmx4G -Xms2G -jar server.jar nogui

echo.
echo ================================================
echo [3] 서버 종료됨 → Git Push 진행
echo ================================================

git add .
git commit -m "auto save"
git push

echo.
echo 완료됨!
pause