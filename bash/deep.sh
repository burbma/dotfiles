#!/bin/bash

set -x

open /Applications/Safari.app/
pkill -x Mail
pkill -x Messages
pkill -x Slack
pkill -x Music
pkill -x zoom.us
sleep 0.5
open /Applications/iTerm.app/
