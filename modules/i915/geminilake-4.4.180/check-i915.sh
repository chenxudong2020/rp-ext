#
# Checking modules is loaded
#

echo -n "Loading module drm_kms_helper -> "
[ `/sbin/lsmod | grep -i drm_kms_helper | wc -l` -gt 0 ] && echo "Module drm_kms_helper loaded succesfully" || echo "Module drm_kms_helper is not loaded"
echo -n "Loading module drm -> "
[ `/sbin/lsmod | grep -i drm | wc -l` -gt 0 ] && echo "Module drm loaded succesfully" || echo "Module drm is not loaded"
echo -n "Loading module iosf_mbi -> "
[ `/sbin/lsmod | grep -i iosf_mbi | wc -l` -gt 0 ] && echo "Module iosf_mbi loaded succesfully" || echo "Module iosf_mbi is not loaded"
echo -n "Loading module backlight -> "
[ `/sbin/lsmod | grep -i backlight | wc -l` -gt 0 ] && echo "Module backlight loaded succesfully" || echo "Module backlight is not loaded"
echo -n "Loading module video -> "
[ `/sbin/lsmod | grep -i video | wc -l` -gt 0 ] && echo "Module video loaded succesfully" || echo "Module video is not loaded"
echo -n "Loading module fb -> "
[ `/sbin/lsmod | grep -i fb | wc -l` -gt 0 ] && echo "Module fb loaded succesfully" || echo "Module fb is not loaded"
echo -n "Loading module button -> "
[ `/sbin/lsmod | grep -i button | wc -l` -gt 0 ] && echo "Module button loaded succesfully" || echo "Module button is not loaded"
echo -n "Loading module i915 -> "
[ `/sbin/lsmod | grep -i i915 | wc -l` -gt 0 ] && echo "Module i915 loaded succesfully" || echo "Module i915 is not loaded"
