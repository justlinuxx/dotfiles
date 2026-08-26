import Quickshell
import Quickshell.Hyprland
import QtQuick
import qs

Repeater {
    model: 10

    Rectangle {
        id: workspace
        required property int index
        property bool isFocused: Hyprland.focusedWorkspace?.id == index + 1
        property bool isActive: Hyprland.workspaces.values.some(w => w.id == index + 1)

        visible: (isFocused || index < 5)

        color: (isFocused) ? Config.colors.fg : Config.colors.bg

        implicitWidth: Config.font.pixelSize * 1.5
        implicitHeight: Config.font.pixelSize * 1.5

        Text {
            anchors.centerIn: parent
            text: `${workspace.index + 1}`

            font {
                family: Config.font.family
                pixelSize: Config.font.pixelSize
            }

            color: (workspace.isFocused) ? Config.colors.bg : ((workspace.isActive) ? Config.colors.fg : Config.colors.empty)
        }

        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: Hyprland.dispatch(`hl.dsp.focus({ workspace = ${workspace.index + 1} })`)
        }
    }
}
