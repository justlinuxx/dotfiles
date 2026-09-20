import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Quickshell.Services.Notifications
import "./components/"

Scope {
    id: root
    NotificationServer {
        id: server

        actionsSupported: true
        bodySupported: true
        imageSupported: true

        onNotification: n => {
            n.tracked = true;
        }
    }

    PanelWindow {
        anchors {
            top: true
            right: true
        }
        margins {
            top: Config.panel.height + 12
            right: 12
        }

        WlrLayershell.layer: WlrLayer.Overlay
        WlrLayershell.namespace: "Notifications"

        implicitWidth: 380
        implicitHeight: Math.max(1, column.implicitHeight)
        color: "transparent"

        exclusionMode: ExclusionMode.Ignore

        ColumnLayout {
            id: column
            width: parent.width
            spacing: 10

            Repeater {
                model: server.trackedNotifications

                delegate: Rectangle {
                    id: card
                    required property Notification modelData

                    function close() {
                        fadeOut.running = true;
                        closeNotification.running = true;
                    }

                    Timer {
                        running: true
                        interval: 5000
                        onTriggered: card.close()
                    }

                    Timer {
                        id: closeNotification
                        interval: 150
                        onTriggered: card.modelData.dismiss()
                    }

                    Layout.fillWidth: true
                    Layout.preferredHeight: 60
                    color: Config.colors.bg
                    border.width: 2
                    border.color: modelData.urgency == NotificationUrgency.Critical ? Config.colors.red : Config.colors.blue

                    PropertyAnimation {
                        id: fadeIn
                        target: card
                        property: "opacity"
                        from: 0
                        to: 1
                        duration: 150
                        running: true
                    }

                    PropertyAnimation {
                        id: fadeOut
                        target: card
                        property: "opacity"
                        from: 1
                        to: 0
                        duration: 150
                        running: true
                    }

                    RowLayout {
                        id: layout
                        anchors.fill: parent
                        anchors.margins: 10
                        spacing: 10

                        Image {
                            Layout.preferredHeight: 36
                            Layout.preferredWidth: 36
                            Layout.alignment: Qt.AlignTop
                            fillMode: Image.PreserveAspectFit
                            visible: source.toString() !== ""
                            source: card.modelData.image || card.modelData.appIcon || ""
                        }

                        ColumnLayout {
                            Layout.fillWidth: true
                            spacing: 2

                            Text {
                                Layout.fillWidth: true
                                text: card.modelData.summary
                                color: Config.colors.fg
                                font.pixelSize: 16
                                font.family: Config.font.family
                                font.bold: true
                                elide: Text.ElideRight
                            }

                            Text {
                                Layout.fillWidth: true
                                visible: text != ""
                                text: card.modelData.body
                                color: Config.colors.fg
                                font.pixelSize: 15
                                font.family: Config.font.family
                                wrapMode: Text.WordWrap
                            }
                        }
                    }

                    Clickable {
                        onLeftClick: card.modelData.actions[0].invoke()
                        onRightClick: card.modelData.dismiss()
                    }
                }
            }
        }
    }
}
