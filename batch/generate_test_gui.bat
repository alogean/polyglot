SET ROOT=C:\Data\dev\IFMS\workspace\IFMSGeneratorCentraSitePluginBuild
SET DATE=_2007-10-03_1407
SET LIBJUNIT=%ROOT%/lib/junit.jar
SET LIBGEN1=%ROOT%/build/jar/IFMSAccessLayer%DATE%.jar
SET LIBGEN2=%ROOT%/build/jar/IFMSGenerator%DATE%.jar
SET LIBGEN3=%ROOT%/build/jar/IFMSModel%DATE%.jar
SET LIBGEN4=%ROOT%/build/jar/IFMSGeneratorCentraSitePlugin%DATE%.jar
SET LIBECORE1=%ROOT%/build/lib/org.eclipse.emf.ecore_2.2.3.v200704050000.jar
SET LIBECORE2=%ROOT%/build/lib/org.eclipse.emf.common_2.2.1.v200704050000.jar
SET LIBECORE3=%ROOT%/build/lib/org.eclipse.emf.ecore.xmi_2.2.3.v200704050000.jar
SET COMMON1=%ROOT%/build/lib/commons-lang/commons-lang-2.3.jar
SET COMMON2=%ROOT%/build/lib/commons-io/commons-io-1.3.1.jar

"%JAVA_HOME%\bin\java" -cp %LIBJUNIT%;%LIBGEN1%;%LIBGEN2%;%LIBGEN3%;%LIBGEN4%;%LIBECORE1%;%LIBECORE2%;%LIBECORE3%;%COMMON1%;%COMMON2% junit.swingui.TestRunner com.csg.cs.log.ifms.generator.GeneratorMasterUnitTest

REM <?xml version="1.0" encoding="UTF-8"?>
REM <classpath>
REM 	<classpathentry kind="src" path="src"/>
REM 	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/activation.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/CentraSiteJAXR-L10N.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/CentraSiteJAXR.jar">
REM 		<attributes>
REM 			<attribute name="javadoc_location" value="http://su98sr120.csintra.net:53305/doc/en/jaxr/Jaxr4Doc/index.html"/>
REM 		</attributes>
REM 	</classpathentry>
REM 	<classpathentry kind="lib" path="lib/centrasite/inmUtil.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/inmUtilConf.jar"/>
REM 	<classpathentry exported="true" kind="lib" path="lib/centrasite/jaxr-api.jar" sourcepath="lib/centrasite/jaxr-apisrc.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/jaxr-apisrc.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/jaxrpc.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/jsr173_1.0_api.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/log4j-1.2.8.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/TaminoAPI4J.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/uddiKeyConverter.jar"/>
REM <classpathentry kind="lib" path="lib/centrasite/wstx-asl-2.0.3.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/xercesImpl_tamino.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/xmlParserAPIs.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/xqj-L10N_en.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/xqj-L10N.jar"/>
REM 	<classpathentry kind="lib" path="lib/centrasite/xqj.jar"/>
REM 	<classpathentry combineaccessrules="false" exported="true" kind="src" path="/IFMSModel"/>
REM 	<classpathentry kind="output" path="bin"/>
REM  </classpath>