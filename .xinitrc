#!/bin/bash
  
if [[ ! -f  ~/.config/nitrogen/bg-saved.cfg ]]; then
  nitrogen --save --set-centered /usr/local/shared/backgrounds/3DSlicerLogo-H-Color-1273x737.png --set-color=#ffffff
fi

nitrogen --restore

tint2 -c /etc/tint2/panel.tint2rc &

sudo /opt/slicer/Slicer ${SLICER_ARGUMENTS} &

openbox

