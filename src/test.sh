#!/bin/sh
#
# K2HR3 Utilities - Get K2HR3 Resource Helper for Systemd service
#
# Copyright 2021 Yahoo! Japan Corporation.
#
# K2HR3 is K2hdkc based Resource and Roles and policy Rules, gathers
# common management information for the cloud.
# K2HR3 can dynamically manage information as "who", "what", "operate".
# These are stored as roles, resources, policies in K2hdkc, and the
# client system can dynamically read and modify these information.
#
# For the full copyright and license information, please view
# the license file that was distributed with this source code.
#
# AUTHOR:   Takeshi Nakatani
# CREATE:   Wed Jan 20 2021
# REVISION:
#

#
# Common variables
#
SCRIPTNAME=`basename $0`
SCRIPTDIR=`dirname $0`
SCRIPTDIR=`cd ${SCRIPTDIR}; pwd`

#
# Test scripts
#
RESULT=0
TARGET_SCRIPTS=`ls -1 ${SCRIPTDIR}/*`
for _target_script in ${TARGET_SCRIPTS}; do
	_target_script_name=`basename ${_target_script}`
	if [ "X${SCRIPTNAME}" = "X${_target_script_name}" ]; then
		continue
	fi

	IS_BASH=0
	head -1 ${_target_script} | grep '^#!/bin/sh' >/dev/null 2>&1
	if [ $? -ne 0 ]; then
		head -1 ${_target_script} | grep '^#!/bin/bash' >/dev/null 2>&1
		if [ $? -ne 0 ]; then
			if [ ! -x ${_target_script} ]; then
				continue
			fi
		else
			IS_BASH=1
		fi
	fi

	echo "Checking ${_target_script} :"
	if [ ${IS_BASH} -ne 1 ]; then
		/bin/sh -n ${_target_script}
	else
		/bin/bash -n ${_target_script}
	fi
	if [ $? -ne 0 ]; then
		echo "   ---> Error."
		RESULT=1
	else
		echo "   ---> OK."
	fi
done

exit ${RESULT}

#
# Local variables:
# tab-width: 4
# c-basic-offset: 4
# End:
# vim600: noexpandtab sw=4 ts=4 fdm=marker
# vim<600: noexpandtab sw=4 ts=4
#
