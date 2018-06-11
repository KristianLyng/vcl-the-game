#!/bin/bash
# 
# READMEs are forever executable.
#
# This is a tiny guess-the-number game, written in Varnish VCL.
# To run it, first expand some variables by executing this README
# (mwhahaha). It will generate "main.vcl".
#
# Then run varnishd, e.g:
# 
# /usr/local/sbin/varnishd -a localhost:1111 -n $PWD -f main.vcl
#
# It has to be port 1111, unless you modify main.vcl (the VCL is
# "recursive").
#
# Then play:
#
# kly@leia:~$ GET http://localhost:1111/15
# TOO LOW!
# kly@leia:~$ GET http://localhost:1111/100
# TOO BIG!
# kly@leia:~$ GET http://localhost:1111/50
# TOO BIG!
# kly@leia:~$ GET http://localhost:1111/40
# TOO BIG!
# kly@leia:~$ GET http://localhost:1111/30
# TOO BIG!
# kly@leia:~$ GET http://localhost:1111/20
# TOO BIG!
# kly@leia:~$ GET http://localhost:1111/17
# WE GOT A WINNER!
#
# Also check out "GET http://localhost:1111/doc"
#


cat main.vcl.in | sed "s,\$PWD,$PWD,g" > main.vcl


