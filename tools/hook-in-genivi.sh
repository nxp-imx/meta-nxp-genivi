#!/bin/sh
#
# NXP Build Enviroment Setup Script
#
# Copyright (C) 2015-2016 Freescale Semiconductor
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

genivi_exit_message()
{
   echo "GENIVI setup complete"
}

genivi_usage()
{
    echo -e "\nDescription: hook-in-genivi.sh will setup the bblayers for an GENIVI build."
    echo -e "\nUsage: source hook-in-genivi.sh
       Run in the build directory.
"
}

genivi_cleanup()
{
    echo -e "Cleaning up variables\n"
    unset GENIVIDISTRO
    unset nxp_setup_help nxp_setup_error nxp_setup_flag
    unset genivi_usage genivi_cleanup genivi_exit_message
}

if [ -e "conf/bblayers.conf" ]; then

unset GENIVIDISTRO
GENIVIDISTRO="nxp-imx-genivi-wayland"

echo -e "\n## GENIVI layers" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-ivi/meta-ivi \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-ivi/meta-ivi-bsp \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-nxp-genivi \"" >> conf/bblayers.conf

echo -e "\nGENIVI layers added to bblayers.conf"

else
genivi_usage
fi

genivi_exit_message
genivi_cleanup
