#!/usr/bin/env bash

polybar-msg cmd quit
polybar --config=~/.config/polybar/config.ini bar-1 & disown
polybar --config=~/.config/polybar/config.ini bar-2 & disown
