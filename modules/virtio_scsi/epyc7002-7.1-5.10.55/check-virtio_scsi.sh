#
# Checking modules is loaded
#

echo -n "Loading module virtio -> "
[ `/sbin/lsmod | grep -i virtio | wc -l` -gt 0 ] && echo "Module virtio loaded succesfully" || echo "Module virtio is not loaded"
echo -n "Loading module virtio_ring -> "
[ `/sbin/lsmod | grep -i virtio_ring | wc -l` -gt 0 ] && echo "Module virtio_ring loaded succesfully" || echo "Module virtio_ring is not loaded"
echo -n "Loading module blk-mq-virtio -> "
[ `/sbin/lsmod | grep -i blk-mq-virtio | wc -l` -gt 0 ] && echo "Module blk-mq-virtio loaded succesfully" || echo "Module blk-mq-virtio is not loaded"
echo -n "Loading module virtio_scsi -> "
[ `/sbin/lsmod | grep -i virtio_scsi | wc -l` -gt 0 ] && echo "Module virtio_scsi loaded succesfully" || echo "Module virtio_scsi is not loaded"
