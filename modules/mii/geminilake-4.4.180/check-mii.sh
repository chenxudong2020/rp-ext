#
# Checking modules is loaded
#

echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
