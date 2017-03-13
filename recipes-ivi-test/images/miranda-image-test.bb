# Base this test image on miranda IVI image
require recipes-yocto-ivi/images/miranda-image.bb

IMAGE_INSTALL_append += " systemd-ptest \
			  openssl-ptest \
			"
