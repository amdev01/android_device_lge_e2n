#12582912 is 6GB size
#20971520 is 10GB size

emmc_size=`cat /sys/block/mmcblk0/size`
if [ "$emmc_size" -lt "12582912" ]; then
	setprop persist.sys.emmc_size 4GB
	echo 4G model
elif [ "$emmc_size" -lt "20971520" ]; then
	setprop persist.sys.emmc_size 8GB
	echo 8G model
else
	echo error!! Memory Size seems to exceed!!
fi
