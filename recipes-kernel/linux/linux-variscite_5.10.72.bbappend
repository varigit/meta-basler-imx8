FILESEXTRAPATHS_prepend := "${THISDIR}/linux-variscite:"

# basler patchset
SRC_URI_append = "\
    file://0001-make-sensor-controls-available-in-mx6s_capture.patch  \
    file://0002-added-SRGGB8-format-support.patch  \
    file://0003-rxhs-settle-and-send-level-value-is-now-optinal-conf.patch  \
    file://0004-increase-max-video-memory-from-64-to-128MB.patch  \
    file://0005-implement-cache-invalidation-for-MMAP.patch  \
    file://0006-handle-subdev-unbind.patch  \
    file://0007-media-csi-Add-support-for-RAW10.patch  \
    file://0008-media-mxc-mipi_csi-Add-UYVY8_2X8.patch  \
    file://0009-media-mxc-capture-Enable-two_8bit_sensor_mode-based-.patch  \
    file://0010-media-mxc-Enable-dual-pixel-mode-for-YUV422.patch  \
    file://0015-mxc-capture-Add-debug-event-interrupt-counters.patch  \
    file://0016-mxc-Fix-MASK_OPTION-in-CSICR18-to-avoid-loosing-firs.patch  \
    file://0019-Merged-PR-9974-Added-highspeed-device-tree-for-imx8m.patch  \
    file://0020-media-mxc-change-mx6s_fmt.bpp-to-bits-per-pixel.patch  \
    file://0021-media-mxc-add-support-for-YUV420-NV12.patch  \
    file://0030-imx8mm-var-dart-Add-Basler-camera-support.patch \
"

# Override/extend machine configurations

# imx8mp-var-dart
KERNEL_DEVICETREE_append_imx8mp-var-dart = " \
	freescale/imx8mp-var-dart-dt8mcustomboard-basler-isi0.dtb \
	freescale/imx8mp-var-dart-dt8mcustomboard-legacy-basler-isi0.dtb \
	freescale/imx8mp-var-som-symphony-basler-isi0.dtb \
"

KERNEL_DEVICETREE_append_imx8mm-var-dart = " \
	freescale/imx8mm-var-dart-dt8mcustomboard-basler.dtb \
	freescale/imx8mm-var-dart-dt8mcustomboard-legacy-basler.dtb \
	freescale/imx8mm-var-som-symphony-basler.dtb \
	freescale/imx8mm-var-som-symphony-legacy-basler.dtb \
"

KERNEL_DEVICETREE_append_imx8mq-var-dart = " \
	freescale/imx8mq-var-dart-dt8mcustomboard-sd-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-sd-lvds-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-sd-lvds-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-wifi-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-wifi-lvds-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-wifi-lvds-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-sd-dp-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-sd-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-sd-lvds-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-sd-lvds-dp-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-sd-lvds-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-wifi-dp-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-wifi-hdmi-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-wifi-lvds-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-wifi-lvds-dp-basler.dtb \
	freescale/imx8mq-var-dart-dt8mcustomboard-legacy-wifi-lvds-hdmi-basler.dtb \
"

# imx8mp-var-dart make added devicetree default
pkg_postinst_kernel-devicetree_append_imx8mp-var-dart () {
        cd $D/boot
        mv imx8mp-var-dart-dt8mcustomboard.dtb imx8mp-var-dart-dt8mcustomboard-ov5640.dtb
        ln -fs imx8mp-var-dart-dt8mcustomboard-basler-isi0.dtb imx8mp-var-dart-dt8mcustomboard.dtb
        mv imx8mp-var-dart-dt8mcustomboard-legacy.dtb imx8mp-var-dart-dt8mcustomboard-legacy-ov5640.dtb
        ln -fs imx8mp-var-dart-dt8mcustomboard-legacy-basler-isi0.dtb imx8mp-var-dart-dt8mcustomboard-legacy.dtb
        mv imx8mp-var-som-symphony.dtb imx8mp-var-som-symphony-ov5640.dtb
        ln -fs imx8mp-var-som-symphony-basler-isi0.dtb imx8mp-var-som-symphony.dtb
}

pkg_postinst_kernel-devicetree_append_imx8mm-var-dart () {
	cd $D/boot
	mv imx8mm-var-dart-dt8mcustomboard.dtb imx8mm-var-dart-dt8mcustomboard-ov5640.dtb
	ln -fs imx8mm-var-dart-dt8mcustomboard-basler.dtb imx8mm-var-dart-dt8mcustomboard.dtb
	mv imx8mm-var-dart-dt8mcustomboard-legacy.dtb imx8mm-var-dart-dt8mcustomboard-legacy-ov5640.dtb
	ln -fs imx8mm-var-dart-dt8mcustomboard-legacy-basler.dtb imx8mm-var-dart-dt8mcustomboard-legacy.dtb
	mv imx8mm-var-som-symphony.dtb imx8mm-var-som-symphony-ov5640.dtb
	ln -fs imx8mm-var-som-symphony-basler.dtb imx8mm-var-som-symphony.dtb
	mv imx8mm-var-som-symphony-legacy.dtb imx8mm-var-som-symphony-legacy-ov5640-.dtb
	ln -fs imx8mm-var-som-symphony-legacy-basler.dtb imx8mm-var-som-symphony-legacy.dtb
}

pkg_postinst_kernel-devicetree_append_imx8mq-var-dart () {
	cd $D/boot
	ln -fs ${DEFAULT_DTB_PREFIX}-${DEFAULT_DTB}-basler.dtb ${DEFAULT_DTB_PREFIX}.dtb
	ln -fs ${DEFAULT_DTB_PREFIX}-legacy-${DEFAULT_DTB}-basler.dtb ${DEFAULT_DTB_PREFIX}-legacy.dtb
}
