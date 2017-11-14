# For gstreamer1.0-plugins-good v1.12.0, the subpackage gstreamer1.0-plugins-good-souphttpsrc
# has been renamed as gstreamer1.0-plugins-good-soup

# UPSTREAM: Make sure to update the base recipe to use ${PN} in RDEPENDS
RDEPENDS_${PN}_remove = "gstreamer1.0-plugins-good-souphttpsrc"
RDEPENDS_${PN}_append = " gstreamer1.0-plugins-good-soup"
