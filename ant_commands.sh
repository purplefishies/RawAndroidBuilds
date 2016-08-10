#!/bin/bash


#mkdir -p ${ROOT_DIR}/Android-FTDI/res
#mkdir -p ${ROOT_DIR}/Android-FTDI/libs



rm -rf ${ROOT_DIR}/${PROJECT}/bin
mkdir -p ${ROOT_DIR}/${PROJECT}/bin
mkdir -p ${ROOT_DIR}/${PROJECT}/bin/res
mkdir -p ${ROOT_DIR}/${PROJECT}/bin/resObj
mkdir -p ${ROOT_DIR}/${PROJECT}/bin/resLibs
mkdir -p ${ROOT_DIR}/${PROJECT}/bin/classes
mkdir -p ${ROOT_DIR}/${PROJECT}/bin/dexedLibs
mkdir -p ${ROOT_DIR}/${PROJECT}/gen
#mkdir -p ${ROOT_DIR}/${PROJECT}/gen/com/UARTLoopback

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

#find . -name "AndroidManifest*" | xargs -I{} cat {} >> bin/AndroidManifest.xml

for i in $(find . -path "./bin" -prune -o -name "AndroidManifest.xml")
do
if [[ -f $i ]] ; then
    cat $i >> bin/AndroidManifest.xml
fi
done


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
# [aapt] '${ROOT_DIR}/${PROJECT}/bin/AndroidManifest.xml'
# [aapt] '-S'
# [aapt] '${ROOT_DIR}/${PROJECT}/bin/res'
# [aapt] '-S'
# [aapt] '${ROOT_DIR}/${PROJECT}/res'
# [aapt] '-I'
# [aapt] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
# [aapt] '-J'
# [aapt] '${ROOT_DIR}/${PROJECT}/gen'
# [aapt] '--generate-dependencies'
# [aapt] '-G'
# [aapt] '${ROOT_DIR}/${PROJECT}/bin/proguard.txt'
# [aapt]
# [aapt] The ' characters around the executable and arguments are
# [aapt] not part of the command.
# [echo] Handling BuildConfig class...
# [buildconfig] Generating BuildConfig class.

/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt package -f -m -0 apk -M ${ROOT_DIR}/${PROJECT}/bin/AndroidManifest.xml -S ${ROOT_DIR}/${PROJECT}/bin/res -S ${ROOT_DIR}/${PROJECT}/res -I /home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar -J ${ROOT_DIR}/${PROJECT}/gen --generate-dependencies -G ${ROOT_DIR}/${PROJECT}/bin/proguard.txt


echo "
/** Automatically generated file. DO NOT MODIFY */
package com.UARTLoopback;

public final class BuildConfig {
    public final static boolean DEBUG = true;
}
" > ./gen/com/UARTLoopback/BuildConfig.java

# or 
# /**
#  * Automatically generated file. DO NOT MODIFY
#  */
# package com.accesio.temperatureconverter;

# public final class BuildConfig {
#   public static final boolean DEBUG = Boolean.parseBoolean("true");
#   public static final String APPLICATION_ID = "com.accesio.temperatureconverter";
#   public static final String BUILD_TYPE = "debug";
#   public static final String FLAVOR = "prod";
#   public static final int VERSION_CODE = 1;
#   public static final String VERSION_NAME = "1.0";
# }


# [javac] com/UARTLoopback/FT311UARTInterface.java added as com/UARTLoopback/FT311UARTInterface.class doesn't exist.
# [javac] com/UARTLoopback/Globals.java added as com/UARTLoopback/Globals.class doesn't exist.
# [javac] com/UARTLoopback/UARTLoopbackActivity.java added as com/UARTLoopback/UARTLoopbackActivity.class doesn't exist.
# [javac] ${ROOT_DIR}/${PROJECT}/gen/R.java.d skipped - don't know how to handle it
# [javac] com/UARTLoopback/BuildConfig.java added as com/UARTLoopback/BuildConfig.class doesn't exist.
# [javac] com/UARTLoopback/R.java added as com/UARTLoopback/R.class doesn't exist.
# [javac] Compiling 5 source files to ${ROOT_DIR}/${PROJECT}/bin/classes
# [javac] Using modern compiler
# [javac] Compilation arguments:
# [javac] '-d'
# [javac] '${ROOT_DIR}/${PROJECT}/bin/classes'
# [javac] '-classpath'
# [javac] '${ROOT_DIR}/${PROJECT}/bin/classes:/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar'
# [javac] '-sourcepath'
# [javac] '${ROOT_DIR}/${PROJECT}/src:${ROOT_DIR}/${PROJECT}/gen'
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
# [javac]     ${ROOT_DIR}/${PROJECT}/src/com/UARTLoopback/FT311UARTInterface.java
# [javac]     ${ROOT_DIR}/${PROJECT}/src/com/UARTLoopback/Globals.java
# [javac]     ${ROOT_DIR}/${PROJECT}/src/com/UARTLoopback/UARTLoopbackActivity.java
# [javac]     ${ROOT_DIR}/${PROJECT}/gen/com/UARTLoopback/BuildConfig.java
# [javac]     ${ROOT_DIR}/${PROJECT}/gen/com/UARTLoopback/R.java

javac -d ${ROOT_DIR}/${PROJECT}/bin/classes -classpath ${ROOT_DIR}/${PROJECT}/bin/classes:/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -sourcepath ${ROOT_DIR}/${PROJECT}/src:${ROOT_DIR}/${PROJECT}/gen -target 1.5 -bootclasspath /home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar -encoding UTF-8 -g -source 1.5     ${ROOT_DIR}/${PROJECT}/src/com/UARTLoopback/FT311UARTInterface.java     ${ROOT_DIR}/${PROJECT}/src/com/UARTLoopback/Globals.java     ${ROOT_DIR}/${PROJECT}/src/com/UARTLoopback/UARTLoopbackActivity.java     ${ROOT_DIR}/${PROJECT}/gen/com/UARTLoopback/BuildConfig.java     ${ROOT_DIR}/${PROJECT}/gen/com/UARTLoopback/R.java 



# -dex:
#       [dex] input: ${ROOT_DIR}/${PROJECT}/bin/classes
#       [dex] input: /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar
#       [dex] Pre-Dexing /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -> annotations-d4548245874597f462feb72e9304e74c.jar
#        [dx] Current OS is Linux
#        [dx] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx' with arguments:
#        [dx] '--dex'
#        [dx] '--output'
#        [dx] '${ROOT_DIR}/${PROJECT}/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar'
#        [dx] '/home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar'
#        [dx]
#        [dx] The ' characters around the executable and arguments are
#        [dx] not part of the command.
#       [dex] Converting compiled files and external libraries into ${ROOT_DIR}/${PROJECT}/bin/classes.dex...
#        [dx] Current OS is Linux
#        [dx] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx' with arguments:
#        [dx] '--dex'
#        [dx] '--output'
#        [dx] '${ROOT_DIR}/${PROJECT}/bin/classes.dex'
#        [dx] '${ROOT_DIR}/${PROJECT}/bin/classes'
#        [dx] '${ROOT_DIR}/${PROJECT}/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar'
#        [dx]
#        [dx] The ' characters around the executable and arguments are
#        [dx] not part of the command.
#        [dx] Merged dex A (28 defs/30.1KiB) with dex B (2 defs/1.1KiB). Result is 30 defs/36.0KiB. Took 0.1s


#input: ${ROOT_DIR}/${PROJECT}/bin/classes
#input: /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar
#Pre-Dexing /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar -> annotations-d4548245874597f462feb72e9304e74c.jar

/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx --dex --output ${ROOT_DIR}/${PROJECT}/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar /home/jdamon/Tools/android-sdk-linux/tools/support/annotations.jar

/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/dx --dex --output ${ROOT_DIR}/${PROJECT}/bin/classes.dex ${ROOT_DIR}/${PROJECT}/bin/classes ${ROOT_DIR}/${PROJECT}/bin/dexedLibs/annotations-d4548245874597f462feb72e9304e74c.jar



# -crunch:
#    [crunch] Current OS is Linux
#    [crunch] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt' with arguments:
#    [crunch] 'crunch'
#    [crunch] '-v'
#    [crunch] '-S'
#    [crunch] '${ROOT_DIR}/${PROJECT}/res'
#    [crunch] '-C'
#    [crunch] '${ROOT_DIR}/${PROJECT}/bin/res'
#    [crunch]
#    [crunch] The ' characters around the executable and arguments are
#    [crunch] not part of the command.
#    [crunch] Crunching PNG Files in source dir: ${ROOT_DIR}/${PROJECT}/res
#    [crunch] To destination dir: ${ROOT_DIR}/${PROJECT}/bin/res
#    [crunch] Processing image to cache: ${ROOT_DIR}/${PROJECT}/res/drawable-hdpi/icon.png => ${ROOT_DIR}/${PROJECT}/bin/res/drawable-hdpi/icon.png
#    [crunch]   (processed image to cache entry ${ROOT_DIR}/${PROJECT}/bin/res/drawable-hdpi/icon.png: 94% size of source)
#    [crunch] Processing image to cache: ${ROOT_DIR}/${PROJECT}/res/drawable-ldpi/icon.png => ${ROOT_DIR}/${PROJECT}/bin/res/drawable-ldpi/icon.png
#    [crunch]   (processed image to cache entry ${ROOT_DIR}/${PROJECT}/bin/res/drawable-ldpi/icon.png: 94% size of source)
#    [crunch] Processing image to cache: ${ROOT_DIR}/${PROJECT}/res/drawable-mdpi/icon.png => ${ROOT_DIR}/${PROJECT}/bin/res/drawable-mdpi/icon.png
#    [crunch]   (processed image to cache entry ${ROOT_DIR}/${PROJECT}/bin/res/drawable-mdpi/icon.png: 94% size of source)
#    [crunch] Crunched 3 PNG files to update cache



/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt crunch -v -S ${ROOT_DIR}/${PROJECT}/res -C ${ROOT_DIR}/${PROJECT}/bin/res

# Crunching PNG Files in source dir: ${ROOT_DIR}/${PROJECT}/res
# To destination dir: ${ROOT_DIR}/${PROJECT}/bin/res
# Processing image to cache: ${ROOT_DIR}/${PROJECT}/res/drawable-hdpi/icon.png => ${ROOT_DIR}/${PROJECT}/bin/res/drawable-hdpi/icon.png
#   (processed image to cache entry ${ROOT_DIR}/${PROJECT}/bin/res/drawable-hdpi/icon.png: 94% size of source)
# Processing image to cache: ${ROOT_DIR}/${PROJECT}/res/drawable-ldpi/icon.png => ${ROOT_DIR}/${PROJECT}/bin/res/drawable-ldpi/icon.png
#   (processed image to cache entry ${ROOT_DIR}/${PROJECT}/bin/res/drawable-ldpi/icon.png: 94% size of source)
# Processing image to cache: ${ROOT_DIR}/${PROJECT}/res/drawable-mdpi/icon.png => ${ROOT_DIR}/${PROJECT}/bin/res/drawable-mdpi/icon.png
#   (processed image to cache entry ${ROOT_DIR}/${PROJECT}/bin/res/drawable-mdpi/icon.png: 94% size of source)
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
#      [aapt] '${ROOT_DIR}/${PROJECT}/bin/AndroidManifest.xml'
#      [aapt] '-S'
#      [aapt] '${ROOT_DIR}/${PROJECT}/bin/res'
#      [aapt] '-S'
#      [aapt] '${ROOT_DIR}/${PROJECT}/res'
#      [aapt] '-I'
#      [aapt] '/home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar'
#      [aapt] '-F'
#      [aapt] '${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity.ap_'
#      [aapt] '--generate-dependencies'
#      [aapt]
#      [aapt] The ' characters around the executable and arguments are
#      [aapt] not part of the command.


/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/aapt package --no-crunch -f --debug-mode -0 apk -M ${ROOT_DIR}/${PROJECT}/bin/AndroidManifest.xml -S ${ROOT_DIR}/${PROJECT}/bin/res -S ${ROOT_DIR}/${PROJECT}/res -I /home/jdamon/Tools/android-sdk-linux/platforms/android-12/android.jar -F ${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity.ap_ --generate-dependencies 


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
RESOURCE_PACKAGE="${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity.ap_"
DEX_FILE_FULL="${ROOT_DIR}/${PROJECT}/bin/classes.dex"
PKG_SIGNED_FULL="${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk"

#
# Stupid stupid task. Really...Really...really try to hide the details.
# Generates the file debug-unaligned.apk
java -classpath /home/jdamon/Tools/android-sdk-linux/tools/lib/sdklib.jar  com.android.sdklib.build.ApkBuilderMain ${PKG_SIGNED_FULL} -v -z ${RESOURCE_PACKAGE} -f ${DEX_FILE_FULL}


# [zipalign] Running zip align on final apk...
# [zip-align] Current OS is Linux
# [zip-align] Executing '/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/zipalign' with arguments:
# [zip-align] '-f'
# [zip-align] '4'
# [zip-align] '${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk'
# [zip-align] '${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk'
# [zip-align]
# [zip-align] The ' characters around the executable and arguments are
# [zip-align] not part of the command.
#      [echo] Debug Package: ${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk


/home/jdamon/Tools/android-sdk-linux/build-tools/23.0.1/zipalign -f 4 ${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity-debug-unaligned.apk ${ROOT_DIR}/${PROJECT}/bin/com.UARTLoopback.UARTLoopbackActivity-debug.apk

