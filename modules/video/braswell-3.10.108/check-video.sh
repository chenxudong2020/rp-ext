#
# Checking modules is loaded
#

echo -n "Loading module video -> "
[ `/sbin/lsmod | grep -i video | wc -l` -gt 0 ] && echo "Module video loaded succesfully" || echo "Module video is not loaded"
