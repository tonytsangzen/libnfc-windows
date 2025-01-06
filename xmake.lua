set_encodings("utf-8") 
add_rules("mode.release", "mode.debug")

target("nfc")
    set_kind("shared")
    add_files("libnfc/*.c", 
    	      "libnfc/drivers/acr122_usb.c", 
	      "libnfc/chips/pn53x.c","libnfc/buses/usbbus.c"
	      )

    add_defines("PACKAGE_VERSION=\"2.4.6\"", "DRIVER_ACR122_USB_ENABLED")
    add_linkdirs("libusb/lib/msvc_x64")
    add_links("libusb")
    add_includedirs("libnfc", "include", "contrib/win32", "libusb/include")
