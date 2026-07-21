@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"==\"\" @echo off
@rem ##########################################################################
@rem
@rem  Gradle startup script for Windows
@rem
@rem ##########################################################################

setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"==\"\" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

pushd %APP_HOME%
findstr /M "WRAPPER_VERSION" gradle/wrapper/gradle-wrapper.properties >nul
if errorlevel 1 (
    for /f "tokens=*" %%i in ('findstr "gradle-" gradle/wrapper/gradle-wrapper.properties') do (
        for /f "tokens=2 delims==" %%a in (\"%%i\") do set GRADLE_VERSION=%%a
    )
)
popd

findstr /M "java" "%JAVA_HOME%\\bin\\java.exe" >nul 2>&1
if errorlevel 1 goto nojava

setlocal enabledelayedexpansion

set CLASSPATH=%APP_HOME%\\gradle\\wrapper\\gradle-wrapper.jar

"%JAVA_HOME%\\bin\\java.exe" -Dorg.gradle.appname="%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

if %errorlevel% equ 0 goto mainEnd

:fail
rem Set variable GRADLE_EXIT_CONSOLE if you need the SHell application to exit with a non zero exit code on failure.
if not \"\"==\"%GRADLE_EXIT_CONSOLE%\" exit 1
exit /b 1

:mainEnd
if \"\"==\"%ERRORLEVEL%\" exit 0

exit /b %ERRORLEVEL%

:nojava
echo.
echo Error: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the location of
echo your Java installation.

goto fail
