#
# Checking modules is loaded
#

echo -n "Loading module crc-itu-t -> "
[ `/sbin/lsmod | grep -i crc-itu-t | wc -l` -gt 0 ] && echo "Module crc-itu-t loaded succesfully" || echo "Module crc-itu-t is not loaded"
echo -n "Loading module atlantic -> "
[ `/sbin/lsmod | grep -i atlantic | wc -l` -gt 0 ] && echo "Module atlantic loaded succesfully" || echo "Module atlantic is not loaded"
