#!/bin/bash

# This is the configuration related to a Linux distribution. It must be loaded from a debmirror script.


#Default
raw_log_dir="/home/repo/mirror_logs"
html_log_dir="/var/www/html/"

#Specific
arch="i386,amd64"
method="http"
destination="/var/mirror/"

distro="ubuntu"
remote_url="archive.ubuntu.com"
remote_root="ubuntu"
dist_dir_content="xenial,xenial-updates"
pool_dir_content="main,universe,restricted,multiverse"