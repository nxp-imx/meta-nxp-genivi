
Build instructions:

Install the `repo` utility:

$: mkdir ~/bin
$: curl http://commondatastorage.googleapis.com/git-repo-downloads/repo  > ~/bin/repo
$: chmod a+x ~/bin/repo
$: PATH=${PATH}:~/bin

Download the BSP Yocto Project Environment

$: mkdir fsl-arm-yocto-bsp
$: cd fsl-arm-yocto-bsp
$: repo init -u http://sw-stash.freescale.net/scm/imx/fsl-arm-yocto-bsp.git -b jethro-4.1.15-1.0.0_ga-genivi-basic
$: repo sync

Setup and Build for Wayland
$: DISTRO=nxp-imx-genivi-wayland MACHINE=imx6qsabreauto source nxp-setup-genivi.sh -b build-genivi

Basic image for genivi:
$: bitbake leviathan-image
$: bitbake ivi-image




