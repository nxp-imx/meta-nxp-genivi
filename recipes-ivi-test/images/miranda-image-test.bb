# Base this test image on miranda IVI image
require recipes-yocto-ivi/images/miranda-image.bb

IMAGE_INSTALL_append += " systemd-ptest \
			  openssl-ptest \
			  libusb1-test \
			  dbus-ptest \
			  curl-test \
			  glibc-test \
			  dhcp-client \
			  python-dbus python-pip python-pygobject \
			  bluez5-test \
			  ofono-tests \
			  alsa-utils-speakertest \
			  wayland-ivi-extension-test \
			"
