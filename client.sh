

adb -s R9TW304KCXN shell
am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel <tunnel_name>
am broadcast -a com.wireguard.android.action.SET_TUNNEL_DOWN -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel <tunnel_name>


adb -s R9TW304KCXN shell am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel wg0usb0
adb -s R9TW304KCXN shell am broadcast -a com.wireguard.android.action.SET_TUNNEL_DOWN -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel wg0usb0


chat:
am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP --es "tunnel" "YourTunnelName"
am broadcast -a com.wireguard.android.action.SET_TUNNEL_DOWN --es "tunnel" "YourTunnelName"

adb shell am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP --es {"tunnel": "0vahag"}



am start -n com.wireguard.android/com.wireguard.android.activity.MainActivity
am start -n com.wireguard.android/.activity.MainActivity

am start -n com.wireguard.android/com.wireguard.android.activity.TvMainActivity



-n name of component
am activity manager




you can use this to connect your specific device :

   * adb devices
  --------------
    List of devices attached
    9f91cc67    offline
    emulator-5558   device
example i want to connect to the first device "9f91cc67"

* adb -s 9f91cc67 tcpip 8080
---------------------------
restarting in TCP mode port: 8080
then

* adb -s 9f91cc67 connect 192.168.1.44:8080
----------------------------------------
connected to 192.168.1.44:8080


#get all brodcat
https://gist.github.com/ilyakatz/9448666
#statuc
adb shell dumpsys activity b

# dynamic
adb shell dumpsys package

adb -s LMK920AMe10428f3 shell dumpsys package | grep wireguard
    adb -s LMK920AMe10428f3 shell ddumpsys activity b | grep wireguard




adb shell am "start -e VH_ADD '"'{"uuid": "b96f6125-5e37-41fc-8544-3fc6b7777653", "name": "vahag", "user": "test", "pass": "test"}'"' -a VH_ADDING org.strongswan.android"


adb shell am start -e "org.strongswan.android.VPN_PROFILE_ID b96f6125-5e37-41fc-8544-3fc6b7777653" -a org.strongswan.android.action.START_PROFILE org.strongswan.android


adb shell am start -e "org.strongswan.android.VPN_PROFILE_ID b96f6125-5e37-41fc-8544-3fc6b7777653" -a org.strongswan.android.action.DISCONNECT org.strongswan.android




adb shell "am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager\$IntentReceiver' -e tunnel wg0usb0"
adb shell "am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager\$IntentReceiver' -e tunnel: wg0usb0"

adb shell am "broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager\$IntentReceiver' -e tunnel wg0usb0"

adb shell am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n com.wireguard.android/.model.TunnelManager\$IntentReceiver --es "tunnel" "wg0usb0"