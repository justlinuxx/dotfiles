import Quickshell
import Quickshell.Networking
import QtQuick
import qs
import qs.components

Text {
    function getWifiIcon() {
        if (!Networking.wifiEnabled)
            return '󰖪';
        if (wifiDevice?.state == ConnectionState.Connecting)
            return '󱚾';
        if (Networking.connectivity == NetworkConnectivity.Limited)
            return '󱛅';
        return '󰖩';
    }

    property string icon: getWifiIcon()
    property WifiDevice wifiDevice: Networking.devices.values.find(dev => dev.name == 'wlan0') ?? null
    property WifiNetwork wifiNetwork: wifiDevice ? wifiDevice.networks.values.find(net => net.connected) ?? null : null

    text: `${icon}`

    font: Config.font
    color: Config.colors.fg

    Clickable {
        onLeftClick: Quickshell.execDetached(['cfg-launch-tui', 'wlctl'])
        onRightClick: Quickshell.execDetached(['cfg-wifi-toggle'])
    }
}
