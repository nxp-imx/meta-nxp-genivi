FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

# Remove the first patch as it breaks with new dbus in sumo
# Remove second patch as it is no longer needed
SRC_URI_remove = " \
    file://capi-dbus-add-support-for-custom-marshalling.patch \
    file://0001-dbus-fix-possible-uninitialized-variable.patch \
    "
# Use the updated patch that works with new dbus in sumo
SRC_URI_append = " \
    file://capi-dbus-add-support-for-custom-marshalling.patch \
    "
