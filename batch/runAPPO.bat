echo off

set IMPORT_LIB=C:\Apps\CentraSite\Importer\lib 
set JAVA_HOME=C:\Apps\CentraSite\Importer\jdk1.5.0_08

rem Could be replace by something like this:
rem for /R %%jar in (%IMPORT_LIB%\*.jar) do set CLASSPATH=%CLASSPATH%;%IMPORT_LIB%\%%jar;

set CLASSPATH=.;%IMPORT_LIB%\CentraSiteAppFramework-common-0.9-SNAPSHOT.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteAppFramework-runtime-0.9-SNAPSHOT.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteAppFramework-validation-0.9-SNAPSHOT.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteAppFramework-validation-cis-0.9-SNAPSHOT.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteControl-L10N.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteControlBE-L10N.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteControlBE.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteControlUI.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteJAXR-L10N.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteJAXR.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteUtils-L10N.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteUtils.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteVMS-L10N.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\CentraSiteVMS.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\commons-logging-1.1.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\cstUtils-3.1.5.0.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\IFMSCentraSiteGui.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\inmUtil.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\inmUtilConf.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\jaxr-api.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\jdom.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\log4j-1.2.8.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\mail.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\opencsv-1.8.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\stax-api-1.0.1.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\TaminoAPI4J-l10n.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\TaminoAPI4J.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\uddi4j.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\uddiKeyConverter.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\wstx-asl-3.0.2.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\xqj-L10N.jar;
set CLASSPATH=%CLASSPATH%%IMPORT_LIB%\xqj.jar

echo on

%JAVA_HOME%\jre\bin\java com.csg.cs.log.ifms.common.RunBatch -type APPO -propfile importer.properties
