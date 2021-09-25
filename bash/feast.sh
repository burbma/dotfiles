#!/bin/bash

set -x

open /Applications/Safari.app/
open /Applications/Bear.app/
pkill Brave\ Browser
pkill -x Mail
pkill -x Messages
pkill Slack
pkill -x Calendar
pkill Basecamp\ 3
sleep 0.5
open /Applications/Safari.app/
