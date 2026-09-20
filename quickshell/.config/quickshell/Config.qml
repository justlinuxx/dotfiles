pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property Colors colors: Colors {}
    readonly property Font font: Font {}
    readonly property Panel panel: Panel {}

    component Colors: QtObject {
        readonly property string black: "#45475a"
        readonly property string red: "#f38ba8"
        readonly property string green: "#a6e3a1"
        readonly property string yellow: "#f9e2af"
        readonly property string blue: "#89b4fa"
        readonly property string magenta: "#f5c2e7"
        readonly property string cyan: "#94e2d5"
        readonly property string white: "#a6adc8"

        readonly property string bg: "#1e1e2e"
        readonly property string dark_bg: "#161622"
        readonly property string darker_bg: "#101019"
        readonly property string lighter_bg: "#313244"

        readonly property string fg: "#cdd6f4"
        readonly property string dark_fg: "#6c7086"
        readonly property string light_fg: "#bac2de"
        readonly property string bright_fg: "#cdd6f4"

        readonly property string empty: "#585b70"
    }

    component Font: QtObject {
        readonly property string family: "CaskaydiaMono Nerd Font Propo"
        readonly property int pixelSize: 16
    }

    component Panel: QtObject {
        readonly property int height: 30
    }
}
