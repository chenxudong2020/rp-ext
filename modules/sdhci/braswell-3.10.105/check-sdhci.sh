#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module sdhci -> "
[ `/sbin/lsmod | grep -i sdhci | wc -l` -gt 0 ] && echo "Module sdhci loaded succesfully" || echo "Module sdhci is not loaded"
