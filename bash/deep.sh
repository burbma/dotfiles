#!/bin/bash

set -x

open /Applications/Brave\ Browser.app/
open /Applications/Bear.app/
pkill -x Mail
pkill -x Messages
pkill Safari
bash ~/dotfiles/bash/dnd-on.sh
sleep 0.5
open /Applications/iTerm.app/
