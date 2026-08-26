pragma Singleton

import Quickshell

Singleton {
    function getIcon(percentage, levelsIcons) {
        const level = Math.ceil(percentage / 100 * levelsIcons.length) - 1;
        return levelsIcons[level];
    }
}
