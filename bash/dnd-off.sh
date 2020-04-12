#!/bin/bash

set -x

defaults -currentHost write ~/Library/Preferences/ByHost/com.apple.notificationcenterui dndEnd -integer $(($(date +"%H") * 60 + $(date +"%M") + 1))
killall NotificationCenter
