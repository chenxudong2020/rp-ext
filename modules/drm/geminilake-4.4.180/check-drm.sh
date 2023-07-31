#
# Checking modules is loaded
#

echo -n "Loading module drm_panel_orientation_quirks -> "
[ `/sbin/lsmod | grep -i drm_panel_orientation_quirks | wc -l` -gt 0 ] && echo "Module drm_panel_orientation_quirks loaded succesfully" || echo "Module drm_panel_orientation_quirks is not loaded"
echo -n "Loading module drm -> "
[ `/sbin/lsmod | grep -i drm | wc -l` -gt 0 ] && echo "Module drm loaded succesfully" || echo "Module drm is not loaded"
