import Quickshell
import Quickshell.Bluetooth
import QtQuick
import qs
import qs.components

Text {
    property BluetoothAdapter adapter: Bluetooth.defaultAdapter

    function getBluetoothIcon() {
        if (adapter?.state == BluetoothAdapterState.Disabled)
            return '󰂲';
        if (adapter?.devices.values.filter(dev => dev.connected).length > 0)
            return '󰂱';
        return '󰂯';
    }

    property string icon: getBluetoothIcon()

    text: `${icon}`
    font: Config.font
    color: Config.colors.fg

    Clickable {
        onLeftClick: Quickshell.execDetached(['cfg-launch-tui', 'bluetui'])
        onRightClick: Quickshell.execDetached(['cfg-bluetooth-toggle'])
    }
}
