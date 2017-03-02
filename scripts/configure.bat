SET WLS_HOME=C:\Oracle\Middleware\Oracle_Home\wlserver\server
SET STAGING=%cd%\..\weblogic-demo\
SET CLS_PATH=%WLS_HOME%\lib\weblogic.jar;.
CMD /c %WLS_HOME%\bin\setWLSEnv.cmd
java -classpath %CLS_PATH% weblogic.Deployer -adminurl http://127.0.0.1:7001 -user weblogic -password fit2cloud -deploy -name xwtest -source %STAGING% -targets AdminServer
