FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = \
" file://0001-LF-2474-media-samsung-csi-fix-string-overflow-issue.patch \
  file://0002-add-imx8mp-evk-basler-ov2775.dts-for-dual-cam.patch \
  file://0003-dual-dwe-support-from-fangchao.patch \
  file://0004-compatible-with-other-dts-file.patch \
  file://0005-dewap-name-unify.patch \
  file://0006-enable-dual-dewarp-for-dual-ov2775.patch \
  file://0007-fix-csi-dewarp-contrl-raw-format-error.patch \
  file://0008-nxp-fix-dwe-isp-clk-and-power.patch \
  file://0009-revert-add-dewarp-clock.patch \
  file://0010-add-imx8mp-evk-basler-ov2775.dtb-to-makefile.patch \
  file://0011-1.add-the-rst-pwd-pin-to-imx8mp-evk-basler-ov2775.dt.patch \
  file://0012-Modified-the-clock-frequency-of-csi1-to-500MHz.-Need.patch \
  file://0013-nxp-fix-dwe-isp-clk-and-power.patch \
  file://0014-revert-add-dewarp-clock.patch \
  file://0015-imx8mp-evk-basler.dts-disable-unused-isi-and-isp-dev.patch \
  file://0016-make-sensor-controls-available-in-mx6s_capture.patch \
  file://0017-added-SRGGB8-format-support.patch \
  file://0018-rxhs-settle-and-send-level-value-is-now-optinal-conf.patch \
  file://0019-increase-max-video-memory-from-64-to-128MB.patch \
  file://0020-implement-cache-invalidation-for-MMAP.patch \
  file://0021-handle-subdev-unbind.patch \
  file://0022-media-csi-Add-support-for-RAW10.patch \
  file://0023-media-mxc-mipi_csi-Add-UYVY8_2X8.patch \
  file://0024-media-mxc-capture-Enable-two_8bit_sensor_mode-based-.patch \
  file://0025-media-mxc-Enable-dual-pixel-mode-for-YUV422.patch \
  file://0026-arm64-dts-imx8mm-Add-DTS-for-Basler-camera.patch \
  file://0027-arm64-dts-imx8mm-ddr4-Add-DTS-for-Basler-camera.patch \
  file://0028-arm64-dts-imx8mq-Add-DTS-for-Basler-camera.patch \
  file://0029-arm64-dts-imx8mm-Add-DT-variants-using-one-CSI-lane.patch \
  file://0030-mxc-capture-Add-debug-event-interrupt-counters.patch \
  file://0031-mxc-Fix-MASK_OPTION-in-CSICR18-to-avoid-loosing-firs.patch \
  file://0032-Reformatted-Makefile.patch \
  file://0033-Add-basler-camera-on-CSI1-via-ISI1.patch \
  file://0034-imx8mp-evk-basler-isi0-add-single-basler-camera-on-I.patch \
  file://0035-imx8mp-var-dart-Add-Basler-camera-support.patch "

pkg_postinst_kernel-devicetree_append_imx8mp-var-dart () {
        cd $D/boot
        mv imx8mp-var-dart-dt8mcustomboard.dtb imx8mp-var-dart-dt8mcustomboard-ov5640.dtb
        ln -fs imx8mp-var-dart-dt8mcustomboard-basler-isp0.dtb imx8mp-var-dart-dt8mcustomboard.dtb
        mv imx8mp-var-dart-dt8mcustomboard-legacy.dtb imx8mp-var-dart-dt8mcustomboard-legacy-ov5640.dtb
        ln -fs imx8mp-var-dart-dt8mcustomboard-legacy-basler-isp0.dtb imx8mp-var-dart-dt8mcustomboard-legacy.dtb
        mv imx8mp-var-som-symphony.dtb imx8mp-var-som-symphony-ov5640.dtb
        ln -fs imx8mp-var-som-symphony-basler-isp0.dtb imx8mp-var-som-symphony.dtb
}

KERNEL_DEVICETREE_append_imx8mp-var-dart = " \
        freescale/imx8mp-var-dart-dt8mcustomboard-basler-isp0.dtb \
	freescale/imx8mp-var-dart-dt8mcustomboard-basler-isi0.dtb \
        freescale/imx8mp-var-dart-dt8mcustomboard-legacy-basler-isp0.dtb \
	freescale/imx8mp-var-dart-dt8mcustomboard-legacy-basler-isi0.dtb \
        freescale/imx8mp-var-som-symphony-basler-isp0.dtb \
	freescale/imx8mp-var-som-symphony-basler-isi0.dtb \
"
