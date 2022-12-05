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
PRGNAME=$(basename "${0}")
SCRIPTDIR=$(dirname "${0}")
SRCTOP=$(cd "${SCRIPTDIR}/.." || exit 1; pwd)
SRCDIR=$(cd "${SRCTOP}/src" || exit 1; pwd)

#
# Test scripts
#
RESULT=0
for _target_script in "${SRCDIR}"/*; do
	_target_script_name=$(basename "${_target_script}")

	if [ -z "${_target_script_name}" ] || [ "${PRGNAME}" = "${_target_script_name}" ]; then
		continue
	fi

	IS_BASH=0
	if head -1 "${_target_script}" | grep -q '^#!/bin/sh'; then
		IS_BASH=0
	else
		if head -1 "${_target_script}" | grep -q '^#!/bin/bash'; then
			IS_BASH=1
		else
			if [ ! -x "${_target_script}" ]; then
				continue
			fi
		fi
	fi

	IS_ERROR=0
	if [ "${IS_BASH}" -ne 1 ]; then
		if ! /bin/sh -n "${_target_script}"; then
			IS_ERROR=1
		fi
	else
		if ! /bin/bash -n "${_target_script}"; then
			IS_ERROR=1
		fi
	fi
	if [ "${IS_ERROR}" -ne 0 ]; then
		echo "Checking ${_target_script} :   ---> Error."
		RESULT=1
	else
		echo "Checking ${_target_script} :   ---> OK."
	fi
done

exit "${RESULT}"

#
# Local variables:
# tab-width: 4
# c-basic-offset: 4
# End:
# vim600: noexpandtab sw=4 ts=4 fdm=marker
# vim<600: noexpandtab sw=4 ts=4
#
