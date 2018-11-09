#!/bin/bash
exec 1> >(tee -a /var/log/switch-to-dev.log) 2>&1
TODAY=$(date)
echo "-----------------------------------------------------"
echo "Date:          $TODAY"
echo "-----------------------------------------------------"

THISUSER=$(whoami)
    if [ $THISUSER != 'root' ]
        then
            echo 'You must use sudo to run this script, sorry!'
            exit  1
    fi

## Set git url and change to jeremysherriff's dev repo
echo ""
echo "Setting git remote url:"
cd /opt/update
git remote set-url origin https://github.com/jeremysherriff/OpenFLIXR2.OnlineUpdate.git
git fetch origin
git checkout dev
git pull

## Update the update scripts
echo ""
echo "Get revert script:"
cp /opt/update/updates/openflixr/revert-of.sh /opt/openflixr/revert-of.sh
chmod +x /opt/openflixr/revert-of.sh
echo " ..done"

echo ""
echo "You should now run:"
echo "  sudo updateopenflixr"

echo ""
echo "To return to @mediajunkie's original repo at any time, run:"
echo "  sudo /opt/openflixr/revert-of.sh"
echo ""
