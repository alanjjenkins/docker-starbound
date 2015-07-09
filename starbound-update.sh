#!/bin/bash
export starbound_path="$PWD/starbound/"

printf "Enter your Steam username:"
read steam_username
steamcmd +@ShutdownOnFailedCommand 1 +force_install_dir $starbound_path +login $steam_username "+app_update 211820 validate" +quit
