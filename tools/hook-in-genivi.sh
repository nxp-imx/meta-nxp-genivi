#!/bin/sh

# hook in genivi layers
echo "# Hook in Genivi layers " >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-ivi/meta-ivi \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-ivi/meta-ivi-bsp \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-nxp-genivi \"" >> conf/bblayers.conf
echo "BBLAYERS += \" \${BSPDIR}/sources/meta-gplv2 \"" >> conf/bblayers.conf
echo >> conf/bblayers.conf

echo "Genivi layers added to bblayers.conf"

