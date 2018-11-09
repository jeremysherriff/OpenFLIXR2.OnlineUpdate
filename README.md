This is my dev branch of mfrelink's OpenFLIXR online updater.  My intention is to provide critical patches and fixes to keep this project going while the guy we know as mediajunkie takes a break.

To switch to this repository, run the following in an SSH session (all on one line):
> wget -O /tmp/switch-to-dev.sh https://github.com/jeremysherriff/OpenFLIXR2.OnlineUpdate/raw/dev/updates/openflixr/switch-to-dev.sh && sudo bash /tmp/switch-to-dev.sh

This will also add a revert script to enable you to go back to the original setup at any time.
Simply run the following to revert:
> sudo /opt/openflixr/revert-of.sh

# OpenFLIXR Media Server
OpenFLIXR Media Server is an all-in-one media server for automated downloading and serving media. Tools like CouchPotato, SickRage, Headphones and SABnzbd to download and Plex Media Server to bring everything to your screens. Be it tablets, TVs, PCs, you name it. Completely web-based and includes monitoring and management tools.

Smart auto-updating will keep everything up-to-date and running smooth. All programs are optimised to work together so it takes very little time to set it up. Being a virtual appliance gives you the advantage to run it on any platform. The only thing you need is a hypervisor like VirtualBox (Open Source), VMWare Fusion / Workstation / Player / ESXi, Parallels Desktop, KVM / unRAID or Microsoft Hyper-V.



> A fully automated media server, ready to go in a couple of minutes!


[Get more info at www.openflixr.com](http://www.openflixr.com)
![OpenFLIXR Landing Page](/img/screen.png)
