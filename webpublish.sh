#!/bin/bash

rm -Rf public
hugo

ssh  root@alf.jesc.ch "rm -Rf /var/www/clubdulevain.ch/*"
scp -r public/* root@alf.jesc.ch:/var/www/clubdulevain.ch/
