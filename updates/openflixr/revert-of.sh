#!/bin/bash
exec 1> >(tee -a /var/log/revert-of.log) 2>&1
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

## Revert OpenFLIXR to mfrelink's repo
echo ""
echo "Setting git remote url:"
cd /opt/update
git remote set-url origin https://github.com/mfrelink/OpenFLIXR2.OnlineUpdate.git
git fetch origin
git checkout master
git reset --hard
git pull

## Update the update scripts
echo ""
echo "Get OpenFLIXR Update scripts:"
cp /opt/update/updates/openflixr/startup.sh /opt/openflixr/startup.sh
chmod +x /opt/openflixr/startup.sh
cp /opt/update/updates/openflixr/updatewkly.sh /opt/openflixr/updatewkly.sh
chmod +x /opt/openflixr/updatewkly.sh
cp /opt/update/updates/openflixr/updateof /opt/openflixr/updateof
chmod +x /opt/openflixr/updateof
cp /opt/update/updates/openflixr/hotfixes /opt/openflixr/hotfixes

## Run any OF updates
echo ""
echo "OpenFLIXR Update:"
cd /opt/openflixr
./startup.sh
