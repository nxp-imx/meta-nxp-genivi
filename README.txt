This Yocto layer provides support for building GENIVI on NXP i.MX6 with GPU hardware.
It has been built only with the wayland backend. This is not tested and not supported.
It is a DEMO only.


Build instructions:

Install the `repo` utility:

$: mkdir ~/bin
$: curl http://commondatastorage.googleapis.com/git-repo-downloads/repo  > ~/bin/repo
$: chmod a+x ~/bin/repo
$: PATH=${PATH}:~/bin

Download the BSP Yocto Project Environment

$: mkdir fsl-arm-yocto-bsp
$: cd fsl-arm-yocto-bsp
$: repo init -u http://sw-stash.freescale.net/scm/imx/fsl-arm-yocto-bsp.git -b imx-4.1.15-1.0.0_genivi-demo
$: repo sync

Setup and Build for Wayland
$: DISTRO=nxp-imx-genivi-wayland MACHINE=imx6qsabreauto source nxp-setup-genivi.sh -b build-genivi

Basic image for genivi:
$: bitbake miranda-image

By default this image loads ivi-input-controller module and it does not enable weston-ivi-shell-user-interface
Check the log (/var/log/weston.log) to see if ivi-input-controller is loaded successfully.

weston.log should look like this:

Loading module '/usr/lib/weston/ivi-shell.so'
launching '/usr/libexec/weston-keyboard'
Loading module '/usr/lib/weston/ivi-controller.so'
Loading module '/usr/lib/weston/ivi-input-controller.so'
ivi-input-controller module loaded successfully

In order to enable weston-ivi-shell-user-interface set ivi-module to hmi-controller.so

ivi-shell in weston.ini should look like this:

[ivi-shell]
ivi-module=hmi-controller.so
ivi-shell-user-interface=/usr/libexec/weston-ivi-shell-user-interface





