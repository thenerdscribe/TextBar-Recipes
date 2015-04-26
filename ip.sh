#!/bin/sh

IP=`ipconfig getifaddr en1`
echo "<html><font face=\"helveticaneue-light\">" $IP"</font></html>"
