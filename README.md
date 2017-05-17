# install.apps.sh

[![GitHub release](https://img.shields.io/github/release/pemre/install-apps.svg?style=flat-square)]()

Script to select &amp; install multiple apps for Ubuntu based distros

## Screenshot
![Screenshot](screenshot.png?raw=true "Screenshot")

## Usage
* Download the latest stable release.
* Go to the directory containing the `install.apps.sh` file and run it.
```bash
$ sh ./install.apps.sh
```
* It shows a select list. Select the apps you want to install and click `OK`.
* It will prompt you for your root password, type it and press `ENTER`.
* Then the script will install the apps one by one.

## List of installable apps in the script
* `ubuntu-restricted-extras`: Flash, Java, Rar, codecs and more**
* `smplayer`: Video player
* `audacious`: Music player
* `qbittorrent`: Torrent client
* `chromium-browser`: Open source version of Google Chrome
* `gimp`: Image editor
* `radiotray`: Radio app
* `virtualbox`: Virtual machine app
* `vlc`: Another video player
* `calibre`: E-book reader
* `gksu`: Graphical 'sudo' command
* `wine`: To run Windows softwares
* `gparted`: Disk partitioner
* `winff`: Video converter
* `subtitleeditor`: Subtitle editor
* `fontforge`: Font editor
* `shutter`: Screenshot app
* `xpad`: Sticky notes
* `partimage`: Disk backup
* `indicator-multiload`: System usage (ram, disk, etc.) indicator
* `indicator-cpufreq`: CPU indicator

## Dependencies
The script looks for these commands, aborts if one of them is not found:
* `sudo`
* `apt-get`
* `zenity`

## Reporting Bugs
For bug reports, questions, feature requests, or other suggestions the best way to contact me is to [create an issue][newissue] on GitHub.

[newissue]: https://github.com/pemre/install-apps/issues/new

## Contributor Guide
Make the plugin better! Join the [contributors] today by submitting a patch! The best way to submit patches is to [fork this project][fork] on GitHub and submit a pull request. But if you are unwilling or unable to use GitHub I will accept patches in any way you can get them to me (JSFiddle, Pastebin, text file, whatever).

[contributors]: https://github.com/pemre/install-apps/graphs/contributors
[fork]: https://github.com/pemre/install-apps/fork
