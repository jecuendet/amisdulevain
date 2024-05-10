#!/bin/bash

rm -Rf public
HUGO_ENV=production hugo

ssh  root@alf.jesc.ch "rm -Rf /var/www/amisdulevain.ch/*"
scp -r public/* root@alf.jesc.ch:/var/www/amisdulevain.ch/
