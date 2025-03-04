source ../emsdk/emsdk_env.sh
cd ..
export CUR=`pwd`
export ANDROID_SDK_ROOT=$CUR/android
export ANDROID_HOME=$CUR/android
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/bin"
export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64
cd CE-GD
scons -j11 platform=linuxbsd target=editor use_lto=yes precision=double && scons -j11 platform=windows target=editor use_lto=yes precision=double && scons -j11 platform=web dlink_enabled=yes target=template_debug precision=double && scons -j11 platform=android arch=arm64 production=yes target=editor precision=double generate_apk=yes
