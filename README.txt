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

$: mkdir imx-yocto-bsp
$: cd imx-yocto-bsp
$: repo init -u https://source.codeaurora.org/external/imx/imx-manifest -b imx-linux-rocko -m imx-4.9.88-2.1.0-genivi-demo.xml
$: repo sync

Setup and Build for Wayland
$: DISTRO=nxp-imx-genivi-wayland MACHINE=imx6qsabreauto source nxp-setup-genivi.sh -b build-genivi

Basic image for genivi:
$: bitbake pulsar-image




