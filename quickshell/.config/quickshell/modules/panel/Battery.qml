import Quickshell
import Quickshell.Services.UPower
import QtQuick
import qs

Text {
    property UPowerDevice battery: UPower.displayDevice
    property int batteryPercentage: battery.percentage * 100

    function getBatteryIcon() {
        const charging = !UPower.onBattery;
        if (charging) {
            return '󰂄';
        }
        const batteryIcons = ["󰁺", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹"];
        return Utils.getIcon(batteryPercentage, batteryIcons);
    }

    text: `${getBatteryIcon()}`
    font: Config.font
    color: Config.colors.fg
}
