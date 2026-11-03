#!/usr/bin/env bash

set -e


################################################################################
### Head: cutefish
##

cutefish_config_run_pre () {

	cutefish_service_stop


	return 0

}

cutefish_config_run_post () {

	cutefish_service_start


	return 0

}

cutefish_service_stop () {

	cutefish_service_stop_xfconfd

	#cutefish_service_stop_xfsettingsd


	return 0

}

cutefish_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

cutefish_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

cutefish_service_start () {


	return 0

}

cutefish_config_install () {

	echo
	echo "##"
	echo "## Config: cutefish"
	echo "##"
	echo


	cutefish_config_install_by_dir


	echo

}

cutefish_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: cutefish
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	cutefish_config_run_pre

	cutefish_config_install

	cutefish_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
