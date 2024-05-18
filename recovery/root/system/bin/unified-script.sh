#!/system/bin/sh
# set a couple of props, depending on device

load_apollo_global()
{
    resetprop "ro.product.name" "apollo"
    resetprop "ro.product.model" "Mi 10T (M2007J3SY)"
}

load_apollo()
{
    resetprop "ro.product.name" "apollo"
    resetprop "ro.product.model" "Redmi K30S Ultra (M2007J3SC)"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_apollo_global;
        ;;
    "CHINA")
        load_apollo;
        ;;
    *)
        load_apollo_global;
        ;;
esac

exit 0;

