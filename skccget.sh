#!/bin/bash

export MEMBERDIR=~/.config/cqrlog/members

if [ ! -d "$MEMBERDIR" ]; then
	mkdir ~/.config/cqrlog/members	

fi

wget http://www.skccgroup.com/search/skcclist.txt

printf "SKCC\nStraight Key Century Club\n" > ~/.config/cqrlog/members/skcc.txt && cat skcclist.txt | sed 1d |sed s/\|/" "/g | sed s/call/""/ |sed s/skccnr/""/ |awk '{ print $2";"$1 }' |tee >> ~/.config/cqrlog/members/skcc.txt
