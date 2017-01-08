rm -r ~/.cache/thumbnails

sudo cp *.thumbnailer /usr/share/thumbnailers/
sudo mkdir /opt/openscad-thumbnailers/
sudo cp *2png.sh /opt/openscad-thumbnailers/

sudo xdg-mime install --novendor stl.xml
sudo update-mime-database /usr/share/mime

