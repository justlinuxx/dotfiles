import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io

Scope {
    id: root
    property bool opened: false

    IpcHandler {
        target: "apps"

        function open(): void {
            root.opened = true;
            console.log("opened");
        }

        function close(): void {
            root.opened = false;
        }
    }

    PanelWindow {
        anchors {
            left: true
            right: true
            top: true
            bottom: true
        }
        color: "transparent"
        exclusionMode: ExclusionMode.Ignore
        visible: root.opened

        Rectangle {
            anchors.centerIn: parent
            width: 600
            height: 600

            color: Config.colors.black

            clip: true

            ColumnLayout {
                anchors.fill: parent

                Repeater {
                    property var applications: DesktopEntries.applications
                    model: applications

                    delegate: Text {
                        required property DesktopEntry modelData
                        text: modelData.name
                        font: Config.font
                        color: Config.colors.fg
                    }
                }
            }
        }
    }
}
