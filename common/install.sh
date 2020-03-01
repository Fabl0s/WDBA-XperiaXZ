## Getting Props into Vars ##

OEM=`grep_prop ro.product.brand`
DEV=`grep_prop ro.product.model`
AOS=`grep_prop ro.build.version.release`

## Compat Checks ##

ui_print "Checking Device and Build..."
ui_print ""
ui_print "OEM:		"$OEM
ui_print "DEVICE:	"$DEV
ui_print "ANDROID:	"$AOS
ui_print ""

## Running Aborts ##

if [ $OEM != "Sony" ]
then abort "OEM Mismatch! Please use the right Module for your device."
fi

if [ $DEV != "F8331" ]
then abort "Device Mismatch! Please use the right Module for your device."
fi

if [ $AOS != "6" ] && [ $AOS != "7" ] && [ $AOS != "8" ]
then abort "Android Mismatch! Please use the right Module for your device."
fi

## Installing Stuff ##

if [ $AOS == "6" ]
	then
		cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/system/media/bootanimation.zip
		cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/oem/media/bootanimation.zip
fi

if [ $AOS == "7" ]
	then
		cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/system/media/bootanimation.zip
		cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/oem/media/bootanimation.zip
fi

if [ $AOS == "8" ]
	then
		cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/system/media/bootanimation.zip
		cp_ch $MODPATH/common/ctos.bootanimation.zip $MODPATH/oem/media/bootanimation.zip
fi

ui_print "Done!"