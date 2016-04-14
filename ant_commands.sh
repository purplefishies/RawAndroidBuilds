#!/bin/bash


mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/res
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/libs
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/bin
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/resObj
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/resLibs
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/gen
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs
mkdir -p /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback

echo "Resolving Dependencies for com.UARTLoopback.UARTLoopbackActivity..."



#-code-gen:
#
# With Android Studio and Gradle-based builds, each app can contain
# manifest files in multiple locations, such as the src/main/ folder
# for the productFlavor, libraries, Android ARchive (AAR) bundles of
# Android Library projects, and dependencies. During the build process,
# manifest merging combines the settings from the various
# AndroidManifest.xml files included in your app into a single,
# generated APK manifest file for app packaging and distribution.  
#
#[mergemanifest] Merging AndroidManifest files into one.
#[mergemanifest] Manifest merger disabled. Using project manifest only.

find . -name "AndroidManifest*" | xargs -I{} cat {} >> bin/AndroidManifest.xml


# [echo] Handling aidl files...
# [aidl] No AIDL files to compile.
# [echo] ----------
# [echo] Handling RenderScript files...
# [echo] ----------
# [echo] Handling Resources...


#Property "android.library" has not been set
# [aapt] Generating resource IDs...
# [aapt] Current OS is Linux
# [aapt] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
# [aapt] 'package'
# [aapt] '-f'
# [aapt] '-m'
# [aapt] '-0'
# [aapt] 'apk'
# [aapt] '-M'
# [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/AndroidManifest.xml'
# [aapt] '-S'
# [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res'
# [aapt] '-S'
# [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/res'
# [aapt] '-I'
# [aapt] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
# [aapt] '-J'
# [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/gen'
# [aapt] '--generate-dependencies'
# [aapt] '-G'
# [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/proguard.txt'
# [aapt]
# [aapt] The ' characters around the executable and arguments are
# [aapt] not part of the command.
# [echo] Handling BuildConfig class...
# [buildconfig] Generating BuildConfig class.

/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt package -f -m -0 apk -M /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/AndroidManifest.xml -S /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res -S /media/jdamon/Development/Documents/Projects/Android-FTDI/res -I /home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar -J /media/jdamon/Development/Documents/Projects/Android-FTDI/gen --generate-dependencies -G /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/proguard.txt


echo "
/** Automatically generated file. DO NOT MODIFY */
package com.UARTLoopback;

public final class BuildConfig {
    public final static boolean DEBUG = true;
}
" > ./gen/com/UARTLoopback/BuildConfig.java


# [javac] com/UARTLoopback/FT311UARTInterface.java added as com/UARTLoopback/FT311UARTInterface.class doesn't exist.
# [javac] com/UARTLoopback/Globals.java added as com/UARTLoopback/Globals.class doesn't exist.
# [javac] com/UARTLoopback/UARTLoopbackActivity.java added as com/UARTLoopback/UARTLoopbackActivity.class doesn't exist.
# [javac] /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/R.java.d skipped - don't know how to handle it
# [javac] com/UARTLoopback/BuildConfig.java added as com/UARTLoopback/BuildConfig.class doesn't exist.
# [javac] com/UARTLoopback/R.java added as com/UARTLoopback/R.class doesn't exist.
# [javac] Compiling 5 source files to /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
# [javac] Using modern compiler
# [javac] Compilation arguments:
# [javac] '-d'
# [javac] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes'
# [javac] '-classpath'
# [javac] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes:/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar'
# [javac] '-sourcepath'
# [javac] '/media/jdamon/Development/Documents/Projects/Android-FTDI/src:/media/jdamon/Development/Documents/Projects/Android-FTDI/gen'
# [javac] '-target'
# [javac] '1.5'
# [javac] '-bootclasspath'
# [javac] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
# [javac] '-encoding'
# [javac] 'UTF-8'
# [javac] '-g'
# [javac] '-source'
# [javac] '1.5'
# [javac]
# [javac] The ' characters around the executable and arguments are
# [javac] not part of the command.
# [javac] Files to be compiled:
# [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/FT311UARTInterface.java
# [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/Globals.java
# [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/UARTLoopbackActivity.java
# [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback/BuildConfig.java
# [javac]     /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback/R.java

javac -d /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes -classpath /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes:/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -sourcepath /media/jdamon/Development/Documents/Projects/Android-FTDI/src:/media/jdamon/Development/Documents/Projects/Android-FTDI/gen -target 1.5 -bootclasspath /home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar -encoding UTF-8 -g -source 1.5     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/FT311UARTInterface.java     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/Globals.java     /media/jdamon/Development/Documents/Projects/Android-FTDI/src/com/UARTLoopback/UARTLoopbackActivity.java     /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback/BuildConfig.java     /media/jdamon/Development/Documents/Projects/Android-FTDI/gen/com/UARTLoopback/R.java 



# -dex:
#       [dex] input: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
#       [dex] input: /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar
#       [dex] Pre-Dexing /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -> annotations-d4548245874597f462feb72e9304e74c.jar
#        [dx] Current OS is Linux
#        [dx] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx' with arguments:
#        [dx] '--dex'
#        [dx] '--output'
#        [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar'
#        [dx] '/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar'
#        [dx]
#        [dx] The ' characters around the executable and arguments are
#        [dx] not part of the command.
#       [dex] Converting compiled files and external libraries into /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes.dex...
#        [dx] Current OS is Linux
#        [dx] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx' with arguments:
#        [dx] '--dex'
#        [dx] '--output'
#        [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes.dex'
#        [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes'
#        [dx] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar'
#        [dx]
#        [dx] The ' characters around the executable and arguments are
#        [dx] not part of the command.
#        [dx] Merged dex A (28 defs/30.1KiB) with dex B (2 defs/1.1KiB). Result is 30 defs/36.0KiB. Took 0.1s


#input: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes
#input: /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar
#Pre-Dexing /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -> annotations-d4548245874597f462feb72e9304e74c.jar

/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx --dex --output /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar

/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx --dex --output /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes.dex /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar



# -crunch:
#    [crunch] Current OS is Linux
#    [crunch] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
#    [crunch] 'crunch'
#    [crunch] '-v'
#    [crunch] '-S'
#    [crunch] '/media/jdamon/Development/Documents/Projects/Android-FTDI/res'
#    [crunch] '-C'
#    [crunch] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res'
#    [crunch]
#    [crunch] The ' characters around the executable and arguments are
#    [crunch] not part of the command.
#    [crunch] Crunching PNG Files in source dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/res
#    [crunch] To destination dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res
#    [crunch] Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-hdpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-hdpi/icon.png
#    [crunch]   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-hdpi/icon.png: 94% size of source)
#    [crunch] Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-ldpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-ldpi/icon.png
#    [crunch]   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-ldpi/icon.png: 94% size of source)
#    [crunch] Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-mdpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-mdpi/icon.png
#    [crunch]   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-mdpi/icon.png: 94% size of source)
#    [crunch] Crunched 3 PNG files to update cache



/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt crunch -v -S /media/jdamon/Development/Documents/Projects/Android-FTDI/res -C /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res

# Crunching PNG Files in source dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/res
# To destination dir: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res
# Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-hdpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-hdpi/icon.png
#   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-hdpi/icon.png: 94% size of source)
# Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-ldpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-ldpi/icon.png
#   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-ldpi/icon.png: 94% size of source)
# Processing image to cache: /media/jdamon/Development/Documents/Projects/Android-FTDI/res/drawable-mdpi/icon.png => /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-mdpi/icon.png
#   (processed image to cache entry /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res/drawable-mdpi/icon.png: 94% size of source)
# Crunched 3 PNG files to update cache


# -package-resources:
#      [aapt] Creating full resource package...
#      [aapt] Current OS is Linux
#      [aapt] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
#      [aapt] 'package'
#      [aapt] '--no-crunch'
#      [aapt] '-f'
#      [aapt] '--debug-mode'
#      [aapt] '-0'
#      [aapt] 'apk'
#      [aapt] '-M'
#      [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/AndroidManifest.xml'
#      [aapt] '-S'
#      [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res'
#      [aapt] '-S'
#      [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/res'
#      [aapt] '-I'
#      [aapt] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
#      [aapt] '-F'
#      [aapt] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity.ap_'
#      [aapt] '--generate-dependencies'
#      [aapt]
#      [aapt] The ' characters around the executable and arguments are
#      [aapt] not part of the command.


/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt package --no-crunch -f --debug-mode -0 apk -M /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/AndroidManifest.xml -S /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/res -S /media/jdamon/Development/Documents/Projects/Android-FTDI/res -I /home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar -F /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity.ap_ --generate-dependencies 


# -package:
# [apkbuilder] Current build type is different than previous build: forced apkbuilder run.
# [apkbuilder] Creating com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk and signing it with a debug key...
#
#
# WHY JAVA SUCKS AND ANDROID BUILDS SUUUUUUUUCKKKKKK !!!!!!!!!!!!!!
#
#
#
# This part is hidden from us
# java -classpath tools/lib/sdklib.jar com.android.sdklib.build.ApkBuilderMain


# java -classpath /home/jdamon/Tools/android-sdk-linux/tools/lib/sdklib.jar  com.android.sdklib.build.ApkBuilderMain
# -d -u 


#set PKG_SIGNED=%TEMP%\%BUILD%\%PROJ_NAME%.apk
#set PKG_SIGNED_FULL=%PROJ_DIR%\%PKG_SIGNED%
#set RESOURCE_PACKAGE_FULL=%PROJ_DIR%\%RESOURCE_PACKAGE%
#set RESOURCE_PACKAGE=%TEMP%\%BUILD%\resources.zip
RESOURCE_PACKAGE="/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity.ap_"
DEX_FILE_FULL="/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/classes.dex"
PKG_SIGNED_FULL="/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk"

#
# Stupid stupid task. Really...Really...really try to hide the details.
# Generates the file debug-unaligned.apk
java -classpath /home/jdamon/Tools/android-sdk-linux/tools/lib/sdklib.jar  com.android.sdklib.build.ApkBuilderMain ${PKG_SIGNED_FULL} -v -z ${RESOURCE_PACKAGE} -f ${DEX_FILE_FULL}


#  [zipalign] Running zip align on final apk...
# [zip-align] Current OS is Linux
# [zip-align] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/zipalign' with arguments:
# [zip-align] '-f'
# [zip-align] '4'
# [zip-align] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk'
# [zip-align] '/media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk'
# [zip-align]
# [zip-align] The ' characters around the executable and arguments are
# [zip-align] not part of the command.
#      [echo] Debug Package: /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk


/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/zipalign -f 4 /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk /media/jdamon/Development/Documents/Projects/Android-FTDI/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk

