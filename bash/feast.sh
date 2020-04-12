#!/bin/bash

set -x

open /Applications/Bear.app/
open /Applications/Safari.app/
pkill Brave\ Browser
pkill -x Mail
pkill -x Messages
bash ~/dotfiles/bash/dnd-on.sh
sleep 0.5
open /Applications/iTerm.app/
