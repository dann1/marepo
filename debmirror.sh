#!/bin/bash

source $1 # import distro settings
log=$log_dir/$distro.log

function logger {
	echo $(date) $1 >> $2
}

# validate directory existance
for i in $log_dir $destination; do
	if [[ ! -e $i ]]; then
		mkdir -p $i
	fi
done


logger "---Begin Sync---" $log

debmirror	--i18n \
		--ignore-small-errors \
		--no-check-gpg \
		--ignore-release-gpg \
		--ignore-missing-release \
		--nosource \
		--diff=none \
		--getcontents \
		--slow-cpu \
		--progress \
		--host=$remote_url \
		--root=$remote_root \
		--dist=$dist_dir_content \
		--section=$pool_dir_content \
		--arch=$arch \
		--method=$method \
		$destination/$distro \
		2>&1 | tee -a $log

logger "--- End Sync ---" $log

cat $log | ccze -h > $log_dir/$distro.html
