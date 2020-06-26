while(true)
do
	date +%s%N
	cat /sys/class/power_supply/battery/voltage_now
	cat /sys/class/power_supply/battery/current_now
done