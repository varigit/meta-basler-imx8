require linux-imx_5.15.inc

# imx8mp-var-dart make added devicetree default
pkg_postinst:kernel-devicetree:append:imx8mp-var-dart () {
        cd $D/boot
        mv imx8mp-var-dart-dt8mcustomboard.dtb imx8mp-var-dart-dt8mcustomboard-ov5640.dtb
        ln -fs imx8mp-var-dart-dt8mcustomboard-basler-isi0.dtb imx8mp-var-dart-dt8mcustomboard.dtb
        mv imx8mp-var-dart-dt8mcustomboard-legacy.dtb imx8mp-var-dart-dt8mcustomboard-legacy-ov5640.dtb
        ln -fs imx8mp-var-dart-dt8mcustomboard-legacy-basler-isi0.dtb imx8mp-var-dart-dt8mcustomboard-legacy.dtb
        mv imx8mp-var-som-symphony.dtb imx8mp-var-som-symphony-ov5640.dtb
        ln -fs imx8mp-var-som-symphony-basler-isi0.dtb imx8mp-var-som-symphony.dtb
}

pkg_postinst:kernel-devicetree:append:imx8mm-var-dart () {
	cd $D/boot
	mv imx8mm-var-dart-dt8mcustomboard.dtb imx8mm-var-dart-dt8mcustomboard-ov5640.dtb
	ln -fs imx8mm-var-dart-dt8mcustomboard-basler.dtb imx8mm-var-dart-dt8mcustomboard.dtb
	mv imx8mm-var-dart-dt8mcustomboard-legacy.dtb imx8mm-var-dart-dt8mcustomboard-legacy-ov5640.dtb
	ln -fs imx8mm-var-dart-dt8mcustomboard-legacy-basler.dtb imx8mm-var-dart-dt8mcustomboard-legacy.dtb
	mv imx8mm-var-som-symphony.dtb imx8mm-var-som-symphony-ov5640.dtb
	ln -fs imx8mm-var-som-symphony-basler.dtb imx8mm-var-som-symphony.dtb
}

pkg_postinst:kernel-devicetree:append:imx8mq-var-dart () {
	cd $D/boot
	ln -fs ${DEFAULT_DTB_PREFIX}-${DEFAULT_DTB}-basler.dtb ${DEFAULT_DTB_PREFIX}.dtb
	ln -fs ${DEFAULT_DTB_PREFIX}-legacy-${DEFAULT_DTB}-basler.dtb ${DEFAULT_DTB_PREFIX}-legacy.dtb
}

