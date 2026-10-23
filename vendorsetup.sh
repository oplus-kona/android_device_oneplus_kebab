# Device Tree
if [ ! -d "device/oneplus/sm8250-common" ]; then
    git clone --depth=1 https://github.com/oplus-kona/android_device_oneplus_sm8250-common.git -b aosp-17 device/oneplus/sm8250-common
fi

# Vendor Trees
if [ ! -d "vendor/oneplus/sm8250-common" ]; then
    git clone --depth=1 https://github.com/oplus-kona/android_vendor_oneplus_sm8250-common.git -b aosp-17 vendor/oneplus/sm8250-common
fi

if [ ! -d "vendor/oneplus/kebab" ]; then
    git clone --depth=1 https://github.com/TheMuppets/proprietary_vendor_oneplus_kebab.git -b lineage-24.0 vendor/oneplus/kebab
fi

# Dolby
if [ ! -d "hardware/dolby" ]; then
    git clone --depth=1 https://github.com/oplus-kona/android_hardware_dolby.git -b lineage-24.0 hardware/dolby
fi

# Hardware
if [ ! -d "hardware/oplus" ]; then
    git clone --depth=1 https://github.com/oplus-kona/android_hardware_oplus.git -b aosp-17 hardware/oplus
fi

# Packages
if [ ! -d "packages/apps/OnePlusParts" ]; then
    git clone --depth=1 https://github.com/oplus-kona/packages_apps_OnePlusParts.git -b main packages/apps/OnePlusParts
fi

# Kernel
if [ ! -d "kernel/oneplus/sm8250" ]; then
    git clone --recurse-submodules --depth=1 https://github.com/oplus-kona/android_kernel_oneplus_sm8250.git -b aosp-17 kernel/oneplus/sm8250
else
    git -C kernel/oneplus/sm8250 submodule update --init --recursive
fi
