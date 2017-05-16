#!/bin/bash
#
# Author:      Emre Piskin
# E-mail:      piskin.emre@gmail.com
# Vers:        1.0.0
# Description: Script to select & install multiple apps for Ubuntu based distros
#

# Exit function in case of a missing dependency
exitDependency() {
  echo >&2 "Dependency error: '$1' not found. Aborting."
  exit 1
}

# Check dependencies
command -v sudo    >/dev/null 2>&1 || exitDependency "sudo"
command -v apt-get >/dev/null 2>&1 || exitDependency "apt-get"
command -v zenity  >/dev/null 2>&1 || exitDependency "zenity"

# Select softwares to install with zenity
selectedSoftwares=`/usr/bin/zenity --title="Install Apps" \
    --width=600 --height=600 \
    --text="Select apps to install:" \
    --list --column="Install" --column="App" --column="Description" \
    --checklist \
    TRUE ubuntu-restricted-extras "Flash, Java, Rar, codecs and more" \
    TRUE smplayer "Video player" \
    TRUE audacious "Music player" \
    TRUE qbittorrent "Torrent client" \
    TRUE chromium-browser "Open source version of Google Chrome" \
    TRUE gimp "Image editor" \
    TRUE radiotray "Radio app" \
    TRUE virtualbox "Virtual machine app" \
    FALSE vlc "Another video player" \
    FALSE calibre "E-book reader" \
    FALSE gksu "Graphical 'sudo' command" \
    FALSE wine "To run Windows softwares" \
    FALSE gparted "Disk partitioner" \
    FALSE winff "Video converter" \
    FALSE subtitleeditor "Subtitle editor" \
    FALSE fontforge "Font editor" \
    FALSE shutter "Screenshot app" \
    FALSE xpad "Sticky notes" \
    FALSE partimage "Disk backup" \
    FALSE indicator-multiload "System usage (ram, disk, etc.) indicator" \
    FALSE indicator-cpufreq "CPU indicator"`

# Start one by one installing
if [ $? -eq 0 ]; then
  IFS="|"
  for software in $selectedSoftwares
    do
      echo -e "\nsudo apt-get -y install $software"
      echo -e "------------------------------------------"
      sudo apt-get -y install $software
    done
  IFS=""
else
  echo Cancel selected
  exit 0
fi
