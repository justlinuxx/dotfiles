import Quickshell
import Quickshell.Services.Pipewire
import QtQuick
import qs
import qs.components

Text {
    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    property PwNode audioOutput: Pipewire.defaultAudioSink
    property int volume: (audioOutput?.audio.volume ?? 0) * 100

    function getVolumeIcon() {
        if (audioOutput?.audio.muted || volume == 0)
            return '';
        const volumeIcons = ['', '', ''];
        return Utils.getIcon(volume, volumeIcons);
    }

    text: `${getVolumeIcon()}`
    font: Config.font
    color: Config.colors.fg

    Clickable {
        onLeftClick: Quickshell.execDetached(['cfg-launch-tui', 'wiremix', '-v', 'output'])
        onRightClick: Quickshell.execDetached(['pactl', 'set-sink-mute', '@DEFAULT_SINK@', 'toggle'])
    }
}
