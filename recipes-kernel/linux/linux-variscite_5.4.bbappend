FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-make-sensor-controls-available-in-mx6s_capture.patch \
            file://0002-added-SRGGB8-format-support.patch \
            file://0003-rxhs-settle-and-send-level-value-is-now-optinal-conf.patch \
            file://0004-increase-max-video-memory-from-64-to-128MB.patch \
            file://0005-implement-cache-invalidation-for-MMAP.patch \
            file://0006-handle-subdev-unbind.patch \
            file://0007-media-csi-Add-support-for-RAW10.patch \
            file://0008-media-mxc-mipi_csi-Add-UYVY8_2X8.patch \
            file://0009-media-mxc-capture-Enable-two_8bit_sensor_mode-based-.patch \
            file://0010-media-mxc-Enable-dual-pixel-mode-for-YUV422.patch \
            file://0015-mxc-capture-Add-debug-event-interrupt-counters.patch \
	    file://0016-mxc-Fix-MASK_OPTION-in-CSICR18-to-avoid-loosing-firs.patch \
"

