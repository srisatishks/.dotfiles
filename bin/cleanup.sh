#!/bin/bash

#removes vimrc from home directory
rm ~/.vimrc

#  removes the line in bashrc
sed -i '$d' ~/.bashrc

#removes TRASH from home directory
rm ~/.TRASH

