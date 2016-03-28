#/bin/bash

NAME=xkb-backup.tar.gz
CONF=/usr/share/X11/xkb


# Check if script has superuser permissions
if [ "$(id -u)" -ne 0 ];
then
   echo "Script requires superuser permissions"
   exit 1
fi


echo "Backing up current configuration in $PWD/$NAME"
tar zcf $NAME /usr/share/X11/xkb --absolute-names
DIRECTORY_OWNER=$(namei -o $PWD | tail -n 1 | awk '{if ($2) print $2}')
chown $DIRECTORY_OWNER -R $NAME

echo "Copying Dvorak-Qwerty configuration"
cp -R ./types ./symbols/ ./rules/  $CONF

exit 0
