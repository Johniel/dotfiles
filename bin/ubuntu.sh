#!/bin/bash

# CapsLockキーとCtrlキーを入れ替える
 gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swapcaps']"

# Ubuntuでホームディレクトリの中身を英語にする
LANG=C xdg-user-dirs-gtk-update
