paris Android-FTDI (master)% ant debug -verbose
Apache Ant(TM) version 1.9.3 compiled on April 8 2014
Trying the default build file: build.xml
Buildfile: /media/jdamon/Development/Documents/Projects/Android-FTDI/build.xml
Detected Java version: 1.7 in: /usr/lib/jvm/java-7-openjdk-amd64/jre
Detected OS: Linux
parsing buildfile /media/jdamon/Development/Documents/Projects/Android-FTDI/build.xml with URI = file:/media/jdamon/Development/Documents/Projects/Android-FTDI/build.xml
Project base dir set to: /media/jdamon/Development/Documents/Projects/Android-FTDI
parsing buildfile jar:file:/usr/share/ant/lib/ant.jar!/org/apache/tools/ant/antlib.xml with URI = jar:file:/usr/share/ant/lib/ant.jar!/org/apache/tools/ant/antlib.xml from a zip file
 [property] Loading /media/jdamon/Development/Documents/Projects/Android-FTDI/local.properties
 [property] Loading /media/jdamon/Development/Documents/Projects/Android-FTDI/ant.properties
 [property] Unable to find property file: /media/jdamon/Development/Documents/Projects/Android-FTDI/ant.properties
 [property] Loading Environment env.
Property "rvm_debug_flag:-0" has not been set
Property "rvm_debug_clr:-" has not been set
Property "rvm_reset_clr:-" has not been set
Override ignored for property "sdk.dir"
Importing file /media/jdamon/Development/Documents/Projects/Android-FTDI/custom_rules.xml from /media/jdamon/Development/Documents/Projects/Android-FTDI/build.xml
Cannot find /media/jdamon/Development/Documents/Projects/Android-FTDI/custom_rules.xml imported from /media/jdamon/Development/Documents/Projects/Android-FTDI/build.xml
Importing file /home/jdamon/Tools/android-sdk-linux/tools/ant/build.xml from /media/jdamon/Development/Documents/Projects/Android-FTDI/build.xml
Overriding previous definition of reference to ant.projectHelper
parsing buildfile /home/jdamon/Tools/android-sdk-linux/tools/ant/build.xml with URI = file:/home/jdamon/Tools/android-sdk-linux/tools/ant/build.xml
Property "key.store" has not been set
 [macrodef] creating macro  do-only-if-not-library
 [macrodef] creating macro  do-only-if-manifest-hasCode
 [macrodef] creating macro  dex-helper
 [macrodef] creating macro  package-helper
 [macrodef] creating macro  zipalign-helper
 [macrodef] creating macro  run-tests-helper
 [macrodef] creating macro  record-build-key
 [macrodef] creating macro  record-build-info
 [macrodef] creating macro  uninstall-helper
Overriding previous definition of reference to ant.projectHelper
Build sequence for target(s) `debug' is [-set-mode-check, -set-debug-files, -check-env, -setup, -set-debug-mode, -debug-obfuscation-check, -pre-build, -build-setup, -code-gen, -pre-compile, -compile, -post-compile, -obfuscate, -dex, -crunch, -package-resources, -package, -post-package, -do-debug, -post-build, debug]
Complete build sequence is [-set-mode-check, -set-debug-files, -check-env, -setup, -set-debug-mode, -debug-obfuscation-check, -pre-build, -build-setup, -code-gen, -pre-compile, -compile, -post-compile, -obfuscate, -dex, -crunch, -package-resources, -package, -post-package, -do-debug, -post-build, debug, -set-instrumented-mode, instrument, emma, android_rules.-pre-build, android_rules.-release-obfuscation-check, android_rules.-setup, lint, android_rules.-release-sign, -test-project-check, android_rules.nodeps, android_rules.-set-debug-files, android_rules.-set-debug-mode, -pre-clean, -release-nosign, install, installd, android_rules.installt, android_rules.-dex, -set-release-mode, android_rules.installr, android_rules.emma, android_rules.-release-nosign, android_rules.-pre-compile, android_rules.instrument, android_rules.uninstall, android_rules.installi, android_rules.lint, android_rules.-obfuscate, android_rules.clean, android_rules.installd, android_rules.-post-build, android_rules.-debug-obfuscation-check, android_rules.-compile, installt, help, -release-obfuscation-check, -release-prompt-for-password, -release-sign, android_rules.release, installr, release, android_rules.-pre-clean, android_rules.-post-compile, installi, android_rules.-code-gen, android_rules.-release-prompt-for-password, android_rules.-package-resources, android_rules.-set-mode-check, android_rules.-test-project-check, test, android_rules.help, android_rules.install, clean, android_rules.-do-debug, android_rules.-check-env, android_rules.-package, android_rules.-set-instrumented-mode, android_rules.-post-package, android_rules.test, android_rules.debug, uninstall, android_rules.-build-setup, nodeps, android_rules.-crunch, , android_rules.-set-release-mode]

-set-mode-check:

-set-debug-files:

-check-env:
 [checkenv] Android SDK Tools Revision 24.4.1
 [checkenv] Installed at /home/jdamon/Tools/android-sdk-linux

-setup:
     [echo] Project Name: com.UARTLoopback.UARTLoopbackActivity
  [gettype] Project Type: Application

-set-debug-mode:
Property "emma.enabled" has not been set

-debug-obfuscation-check:

-pre-build:

-build-setup:
[getbuildtools] Using latest Build Tools: 23.0.1
 [property] Loading /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/build.prop
 [property] Unable to find property file: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/build.prop
     [echo] Resolving Build Target for com.UARTLoopback.UARTLoopbackActivity...
[gettarget] Project Target:   Android 3.1
[gettarget] API level:        12
     [echo] ----------
     [echo] Creating output directories if needed...
    [mkdir] Skipping /media/jdamon/Development/Documents/Projects/Android-FTDI/res because it already exists.
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/libs
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/rsObj
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/rsLibs
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/gen
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
    [mkdir] Created dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs
     [echo] ----------
     [echo] Resolving Dependencies for com.UARTLoopback.UARTLoopbackActivity...
[dependency] Library dependencies:
[dependency] No Libraries
[dependency]
[dependency] ------------------
[dependency] API<=15: Adding annotations.jar to the classpath.
     [echo] ----------
     [echo] Building Libraries with 'debug'...
   [subant] No sub-builds to iterate on

-code-gen:
[mergemanifest] Merging AndroidManifest files into one.
[mergemanifest] Manifest merger disabled. Using project manifest only.
     [echo] Handling aidl files...
     [aidl] No AIDL files to compile.
     [echo] ----------
     [echo] Handling RenderScript files...
     [echo] ----------
     [echo] Handling Resources...
Property "android.library" has not been set
     [aapt] Generating resource IDs...
     [aapt] Current OS is Linux
     [aapt] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
     [aapt] 'package'
     [aapt] '-f'
     [aapt] '-m'
     [aapt] '-0'
     [aapt] 'apk'
     [aapt] '-M'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/AndroidManifest.xml'
     [aapt] '-S'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res'
     [aapt] '-S'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/res'
     [aapt] '-I'
     [aapt] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
     [aapt] '-J'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/gen'
     [aapt] '--generate-dependencies'
     [aapt] '-G'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/proguard.txt'
     [aapt]
     [aapt] The ' characters around the executable and arguments are
     [aapt] not part of the command.
     [echo] ----------
     [echo] Handling BuildConfig class...
[buildconfig] Generating BuildConfig class.

-pre-compile:

-compile:
    [javac] com/UARTLoopback/FT311UARTInterface.java added as com/UARTLoopback/FT311UARTInterface.class doesn't exist.
    [javac] com/UARTLoopback/Globals.java added as com/UARTLoopback/Globals.class doesn't exist.
    [javac] com/UARTLoopback/UARTLoopbackActivity.java added as com/UARTLoopback/UARTLoopbackActivity.class doesn't exist.
    [javac] /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/R.java.d skipped - don't know how to handle it
    [javac] com/UARTLoopback/BuildConfig.java added as com/UARTLoopback/BuildConfig.class doesn't exist.
    [javac] com/UARTLoopback/R.java added as com/UARTLoopback/R.class doesn't exist.
    [javac] Compiling 5 source files to /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
    [javac] Using modern compiler
    [javac] Compilation arguments:
    [javac] '-d'
    [javac] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes'
    [javac] '-classpath'
    [javac] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes:/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar'
    [javac] '-sourcepath'
    [javac] '/media/jdamon/Development/Documents/Projects/Android-FTDI/src:/media/jdamon/Development/Documents/Projects/Android-FTDI/gen'
    [javac] '-target'
    [javac] '1.5'
    [javac] '-bootclasspath'
    [javac] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
    [javac] '-encoding'
    [javac] 'UTF-8'
    [javac] '-g'
    [javac] '-source'
    [javac] '1.5'
    [javac]
    [javac] The ' characters around the executable and arguments are
    [javac] not part of the command.
    [javac] Files to be compiled:
    [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/FT311UARTInterface.java
    [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/Globals.java
    [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/UARTLoopbackActivity.java
    [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback/BuildConfig.java
    [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback/R.java

-post-compile:

-obfuscate:

-dex:
      [dex] input: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
      [dex] input: /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar
      [dex] Pre-Dexing /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -> annotations-d4548245874597f462feb72e9304e74c.jar
       [dx] Current OS is Linux
       [dx] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx' with arguments:
       [dx] '--dex'
       [dx] '--output'
       [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar'
       [dx] '/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar'
       [dx]
       [dx] The ' characters around the executable and arguments are
       [dx] not part of the command.
      [dex] Converting compiled files and external libraries into /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes.dex...
       [dx] Current OS is Linux
       [dx] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx' with arguments:
       [dx] '--dex'
       [dx] '--output'
       [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes.dex'
       [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes'
       [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar'
       [dx]
       [dx] The ' characters around the executable and arguments are
       [dx] not part of the command.
       [dx] Merged dex A (28 defs/30.1KiB) with dex B (2 defs/1.1KiB). Result is 30 defs/36.0KiB. Took 0.1s

-crunch:
   [crunch] Current OS is Linux
   [crunch] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
   [crunch] 'crunch'
   [crunch] '-v'
   [crunch] '-S'
   [crunch] '/media/jdamon/Development/Documents/Projects/Android-FTDI/res'
   [crunch] '-C'
   [crunch] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res'
   [crunch]
   [crunch] The ' characters around the executable and arguments are
   [crunch] not part of the command.
   [crunch] Crunching PNG Files in source dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/res
   [crunch] To destination dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res
   [crunch] Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-hdpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-hdpi/icon.png
   [crunch]   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-hdpi/icon.png: 94% size of source)
   [crunch] Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-ldpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-ldpi/icon.png
   [crunch]   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-ldpi/icon.png: 94% size of source)
   [crunch] Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-mdpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-mdpi/icon.png
   [crunch]   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-mdpi/icon.png: 94% size of source)
   [crunch] Crunched 3 PNG files to update cache

-package-resources:
     [aapt] Creating full resource package...
     [aapt] Current OS is Linux
     [aapt] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
     [aapt] 'package'
     [aapt] '--no-crunch'
     [aapt] '-f'
     [aapt] '--debug-mode'
     [aapt] '-0'
     [aapt] 'apk'
     [aapt] '-M'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/AndroidManifest.xml'
     [aapt] '-S'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res'
     [aapt] '-S'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/res'
     [aapt] '-I'
     [aapt] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
     [aapt] '-F'
     [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity.ap_'
     [aapt] '--generate-dependencies'
     [aapt]
     [aapt] The ' characters around the executable and arguments are
     [aapt] not part of the command.

-package:
[apkbuilder] Current build type is different than previous build: forced apkbuilder run.
[apkbuilder] Creating com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk and signing it with a debug key...

-post-package:

-do-debug:
 [zipalign] Running zip align on final apk...
[zip-align] Current OS is Linux
[zip-align] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/zipalign' with arguments:
[zip-align] '-f'
[zip-align] '4'
[zip-align] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk'
[zip-align] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk'
[zip-align]
[zip-align] The ' characters around the executable and arguments are
[zip-align] not part of the command.
     [echo] Debug Package: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk
[propertyfile] Creating new property file: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/build.prop
[propertyfile] Updating property file: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/build.prop
[propertyfile] Updating property file: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/build.prop
[propertyfile] Updating property file: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/build.prop

-post-build:
