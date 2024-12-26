#!/bin/bash

echo "* Building site ..."
rm -Rf public
HUGO_ENV=production hugo
ret=$?
if [ $ret != 0 ]; then
  echo "Hugo error!"
  exit 1
fi

DIR="/var/www/amisdulevain.ch"
echo "* Sending to $DIR ..."
ssh  jec@alf.jesc.ch "rm -Rf $DIR/*"
scp -r public/* root@alf.jesc.ch:$DIR/
