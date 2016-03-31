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
$: bitbake leviathan-image
$: bitbake ivi-image




