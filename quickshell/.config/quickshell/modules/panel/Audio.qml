import Quickshell
import Quickshell.Services.Pipewire
import QtQuick
import QtQuick.Layouts
import qs
import qs.components

RowLayout {
    spacing: 0
    RowLayout {
        id: root
        spacing: 6

        property PwNode audioOutput: Pipewire.defaultAudioSink
        property int volume: (audioOutput?.audio.volume ?? 0) * 100

        Text {
            PwObjectTracker {
                objects: [Pipewire.defaultAudioSink]
            }

            function getVolumeIcon() {
                if (root.audioOutput?.audio.muted || root.volume == 0)
                    return '';
                const volumeIcons = ['', '', ''];
                return Utils.getIcon(root.volume, volumeIcons);
            }

            text: `${getVolumeIcon()}`
            font: Config.font
            color: Config.colors.fg
        }

        Text {
            text: `${root.volume}%`
            visible: hoverArea.containsMouse
            font: Config.font
            color: Config.colors.light_fg
        }
    }

    MouseArea {
        id: hoverArea
        hoverEnabled: true
        anchors.fill: parent
    }

    Clickable {
        onLeftClick: Quickshell.execDetached(['cfg-launch-tui', 'wiremix', '-v', 'output'])
        onRightClick: Quickshell.execDetached(['pactl', 'set-sink-mute', '@DEFAULT_SINK@', 'toggle'])
    }
}
