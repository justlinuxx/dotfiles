import Quickshell
import Quickshell.Services.UPower
import QtQuick
import QtQuick.Layouts
import qs

RowLayout {
    id: root
    property UPowerDevice battery: UPower.displayDevice
    property int batteryPercentage: battery.percentage * 100

    Text {
        function getBatteryIcon() {
            const charging = !UPower.onBattery;
            if (charging) {
                return '󰂄';
            }
            const batteryIcons = ["󰁺", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹"];
            return Utils.getIcon(root.batteryPercentage, batteryIcons);
        }

        text: `${getBatteryIcon()}`
        font: Config.font
        color: Config.colors.fg
    }

    Text {
        text: `${root.batteryPercentage}%`
        visible: hoverArea.containsMouse
        font: Config.font
        color: Config.colors.light_fg
    }

    MouseArea {
        id: hoverArea
        anchors.fill: parent
        hoverEnabled: true
    }
}
