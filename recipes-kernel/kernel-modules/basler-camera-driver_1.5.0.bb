SUMMARY = "Basler camera sensor driver"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=801f80980d171dd6425610833a22dbe6"

inherit module

# In case of imx8mplus we need a special modprobe.d config.
RDEPENDS_${PN}_append_mx8mp="imx8mp-modprobe-config"

SRC_URI = "file://basler-camera-driver/* file://COPYING;subdir=basler-camera-driver"
S = "${WORKDIR}/basler-camera-driver"

# The inheritance of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

RPROVIDES_${PN} += "kernel-module-basler-camera-driver"

PACKAGES =+ " basler-camera-driver-kernel-headers"
FILES_${PN}-dev = "${includedir}/linux/basler-camera-driver.h"
do_install_append() {
    install -d ${D}${includedir}/linux
    install -m 644 ${S}/basler-camera-driver.h ${D}${includedir}/linux/basler-camera-driver.h
    rm -R ${D}${includedir}/basler-camera-driver/
}

