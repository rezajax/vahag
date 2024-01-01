

adb -s R9TW304KCXN shell
am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel <tunnel_name>
am broadcast -a com.wireguard.android.action.SET_TUNNEL_DOWN -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel <tunnel_name>


adb -s R9TW304KCXN shell am broadcast -a com.wireguard.android.action.SET_TUNNEL_UP -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel wg0usb0
adb -s R9TW304KCXN shell am broadcast -a com.wireguard.android.action.SET_TUNNEL_DOWN -n 'com.wireguard.android/.model.TunnelManager$IntentReceiver' -e tunnel wg0usb0