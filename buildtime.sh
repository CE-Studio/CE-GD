source ../emsdk/emsdk_env.sh
scons -j11 platform=linuxbsd target=editor use_lto=yes precision=double && scons -j11 platform=windows target=editor use_lto=yes precision=double && scons -j11 platform=web dlink_enabled=yes target=template_debug precision=double
