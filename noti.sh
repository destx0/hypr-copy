battery_status=$(acpi -b | head -n 1)
charge_stat="Charging"
if [[ $battery_status == *"Discharging"* ]]; then
    charge_stat="Discharging"
fi

battery_percentage=$(echo $battery_status | grep -Eo '[0-9]+%' | head -n 1)
batteryfinal="Battery $battery_percentage $charge_stat"

notify-send -t 1500 "$(date "+%I:%M:%S %p") " "$(date "+%m-%d-%Y \n%A \n$batteryfinal")"
