#!/system/bin/sh
# set a couple of props, depending on device

load_apollo_global()
{
    resetprop "ro.product.name" "apollo"
    resetprop "ro.product.model" "Mi 10T (M2007J3SY)"
}

load_apollo_pro()
{
    resetprop "ro.product.name" "apollo"
    resetprop "ro.product.model" "Mi 10T Pro (M2007J3SG)"
}

load_apollo()
{
    resetprop "ro.product.name" "apollo"
    resetprop "ro.product.model" "Redmi K30S Ultra (M2007J3SC)"
}

variant=$(getprop ro.boot.product.hardware.sku)
echo $variant

case $variant in
    "std")
        load_apollo_global;
        ;;
    "pro")
        load_apollo_pro;
        ;;
    *)
        load_apollo;
        ;;
esac

exit 0;

