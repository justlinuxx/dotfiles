pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property Colors colors: Colors {}
    readonly property Font font: Font {}

    component Colors: QtObject {
        readonly property string bg: "#000"
        readonly property string fg: "#fff"
        readonly property string empty: "#888"
    }

    component Font: QtObject {
        readonly property string family: "CaskaydiaMono Nerd Font"
        readonly property int pixelSize: 16
    }
}
