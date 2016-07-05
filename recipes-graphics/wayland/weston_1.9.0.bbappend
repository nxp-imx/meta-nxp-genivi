FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

# This patch adds a missing #include config.h which would cause the screen to be blank if not added.
SRC_URI_append = " file://0001-ivi-shell-user-interface-fix-runtime-error-caused-by.patch \
                 "

do_install_append() {
    WESTON_INI_CONFIG=${sysconfdir}/xdg/weston
    install -d ${D}${WESTON_INI_CONFIG}
    install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}${WESTON_INI_CONFIG}/weston.ini
    sed -i -e 's/hmi-controller.so/ivi-controller.so\nivi-input-module=ivi-input-controller.so/' \
          -e 's|\@libexecdir\@|${libexecdir}|' \
          -e 's|\@plugin_prefix\@||' \
          -e 's|\@abs_top_srcdir\@\/data|${datadir}\/weston|' \
          -e 's|\@abs_top_builddir\@\/clients|${bindir}|' \
          -e 's|\@abs_top_builddir\@\/weston-ivi-shell-user-interface|${libexecdir}/weston-ivi-shell-user-interface|' \
          ${D}${WESTON_INI_CONFIG}/weston.ini
    sed -i -e 's|\@abs_top_builddir\@\/weston-|${bindir}/weston-|' \
          ${D}${WESTON_INI_CONFIG}/weston.ini
}