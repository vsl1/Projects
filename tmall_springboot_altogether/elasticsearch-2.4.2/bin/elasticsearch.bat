@echo off
set "JAVA_HOME="
cd..
cd..
cd jdk
set "JAVA_HOME=%cd%"
cd ..
cd elasticsearch-2.4.2
cd bin

SETLOCAL enabledelayedexpansion
TITLE Elasticsearch 2.4.2

SET params='%*'

:loop
FOR /F "usebackq tokens=1* delims= " %%A IN (!params!) DO (
    SET current=%%A
    SET params='%%B'
	SET silent=N
	
	IF "!current!" == "-s" (
		SET silent=Y
	)
	IF "!current!" == "--silent" (
		SET silent=Y
	)	
	
	IF "!silent!" == "Y" (
		SET nopauseonerror=Y
	) ELSE (
	    IF "x!newparams!" NEQ "x" (
	        SET newparams=!newparams! !current!
        ) ELSE (
            SET newparams=!current!
        )
	)
	
    IF "x!params!" NEQ "x" (
		GOTO loop
	)
)

SET HOSTNAME=%COMPUTERNAME%

CALL "%~dp0elasticsearch.in.bat"
IF ERRORLEVEL 1 (
	IF NOT DEFINED nopauseonerror (
		PAUSE
	)
	EXIT /B %ERRORLEVEL%
)

"%JAVA_HOME%\bin\java" %JAVA_OPTS% %ES_JAVA_OPTS% %ES_PARAMS% -cp "%ES_CLASSPATH%" "org.elasticsearch.bootstrap.Elasticsearch" start !newparams!
pause
ENDLOCAL
