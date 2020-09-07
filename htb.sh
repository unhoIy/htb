#!/bin/bash

clear
echo -e "\e[32mHackTheBox Invite Generator"
echo -e ""
echo -e "\e[39mPress any key to continue."
read
echo -e "\e[32mGenerating invite.."


CODE=$(curl -s -XPOST https://www.hackthebox.eu/api/invite/generate | jq '.data.code' | cut -d'"' -f 2 | base64 -d)
echo -e "\e[36mInvite generated! Your code is $CODE"