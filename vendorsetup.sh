# Device Tree
if [ ! -d "device/oneplus/sm8250-common" ]; then
    git clone https://github.com/oplus-kona/android_device_oneplus_sm8250-common.git device/oneplus/sm8250-common
fi

# Vendor Trees
if [ ! -d "vendor/oneplus/sm8250-common" ]; then
    git clone --depth=1 https://github.com/oplus-kona/android_vendor_oneplus_sm8250-common.git vendor/oneplus/sm8250-common
fi

if [ ! -d "vendor/oneplus/kebab" ]; then
    git clone --depth=1 https://github.com/TheMuppets/proprietary_vendor_oneplus_kebab.git -b lineage-24.0 vendor/oneplus/kebab
fi

# Hardware
if [ ! -d "hardware/oplus" ]; then
    git clone https://github.com/oplus-kona/android_hardware_oplus.git hardware/oplus
fi

# Kernel
if [ ! -d "kernel/oneplus/sm8250" ]; then
    git clone --recurse-submodules https://github.com/oplus-kona/android_kernel_oneplus_sm8250.git kernel/oneplus/sm8250
else
    git -C kernel/oneplus/sm8250 submodule update --init --recursive
fi
