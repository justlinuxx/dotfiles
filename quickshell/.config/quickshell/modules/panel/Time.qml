import Quickshell
import QtQuick
import qs

Text {
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

    color: Config.colors.fg
    font: Config.font
    text: Qt.formatTime(clock.date, "hh:mm")
}
