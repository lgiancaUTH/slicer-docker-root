# This is intended to be used inside rootless docker daemon as it will elveate the user to root

# see also https://github.com/pieper/SlicerDockers/blob/master/slicer/Dockerfile
FROM stevepieper/slicer:5.0.3

# overwriting files running 3D Slicer appending sudo
COPY menu.xml /etc/xdg/openbox/
COPY .xinitrc /home/researcher/
COPY slicer.desktop /opt/slicer/
