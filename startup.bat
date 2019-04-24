cls
@echo off

echo Startup Youtrack Container Starter
echo ----------------------------------
echo.

:loop

docker container start youtrack >nul 2>&1 && goto :success

echo Not running, wait a bit, retry.
timeout 15

goto :loop

:success

echo Started Youtrack container.

timeout 5
