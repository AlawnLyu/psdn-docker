#!/bin/bash
/usr/sbin/pdns_server --daemon
/usr/sbin/httpd -DFOREGROUND
#rm -rf /run/httpd/*
#/usr/sbin/apachectl -D FOREGROUND 
