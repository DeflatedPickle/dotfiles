#!/bin/bash

# Update your stuff
sudo apt update

# Install Languages
	# Install Python
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7

	# Install Ruby
sudo apt-get install ruby

	# Install Perl
sudo apt-get install perl

	# Install Rust
curl https://sh.rustup.rs -sSf | sh

	# Install Crystal
curl -sSL https://dist.crystal-lang.org/apt/setup.sh | sudo bash
sudo apt install crystal
sudo apt install libxml2-dev
sudo apt install libyaml-dev
sudo apt install libgmp-dev

# Install Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

	# Install Oh My Fish
curl -L https://get.oh-my.fish | fish

	# Install BobTheFish
omf install bobthefish

# Install Powerline Fonts
sudo apt-get install fonts-powerline

# Install Terminology
sudo apt-get install terminology

# Install NeoFetch
sudo apt install neofetch

# Install Ubuntu-Desktop
# sudo apt-get install ubuntu-desktop
# sudo apt-get install compizconfig-settings-manager

# Install some goofs
# Credit for instructions: https://www.tecmint.com/20-funny-commands-of-linux-or-linux-is-fun-in-terminal/
apt-get install sl
apt-get install fortune
apt-get install cowsay
apt-get install cowthink
apt-get install cmatrix
apt-get install oneko
apt-get install libaa-bin
apt-get install bb

setup_asciiquarium
install_asciiquarium

# Update your stuff, again
sudo apt update

# Functions
function setup_asciiquarium {
	apt-get install libcurses-perl
	cd /tmp
	wget http://search.cpan.org/CPAN/authors/id/K/KB/KBAUCOM/Term-Animation-2.4.tar.gz
	tar -zxvf Term-Animation-2.4.tar.gz
	cd Term-Animation-2.4/
	perl Makefile.PL
	perl make
	make install
}

function install_asciiquarium {
	cd /tmp
	wget http://www.robobunny.com/projects/asciiquarium/asciiquarium.tar.gz
	tar -zxvf asciiquarium.tar.gz
	cd asciiquarium_1.1/
	cp asciiquarium /usr/local/bin
	chmod 0755 /usr/local/bin/asciiquarium
}
