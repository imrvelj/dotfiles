#------------------------------------------------------------------------

INTERFACE="wlan0"

#------------------------------------------------------------------------

# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] ||
    [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]] && exit

#------------------------------------------------------------------------

QUALITY=$(grep wlan0 /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

#------------------------------------------------------------------------

echo $QUALITY%

# color
if [[ $QUALITY -ge 80 ]]; then
    echo "#A3BE8C"
elif [[ $QUALITY -lt 80 ]]; then
    echo "#EBCB8B"
elif [[ $QUALITY -lt 60 ]]; then
    echo "#D08770"
elif [[ $QUALITY -lt 40 ]]; then
    echo "#BF616A"
fi
