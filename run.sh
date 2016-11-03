#!/bin/bash

export DISPLAY=:0

#./build/release-linux-arm/ioquake3.arm \
ioquake3.arm \
+set sv_pure 0 \
+set vm_game 0 \
+set vm_cgame 0 \
+set vm_ui 0 \
+set fs_basepath /usr/lib/openarena \
+set r_fullscreen 0 \
+set cg_viewsize 100 \
+set r_mode 11 \
+set usbk 1 \
+set usbm 2 \
+set x11 1 \

#+set fs_homepath "$HOME/.greatgame"
#+set r_customheight 240 \
#+set r_customwidth 320 \
