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

#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
AC_PREREQ([2.63])
AC_INIT(k2hr3-get-resource, m4_esyscmd([tr -d '\n' < $(pwd)/RELEASE_VERSION]))
AM_INIT_AUTOMAKE()

#
# Checks for programs.
#
AC_PROG_AWK
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

#
# Symbols for buildutils
#
AC_SUBST([GIT_DOMAIN], "github.com")
AC_SUBST([GIT_ORG], "yahoojapan")
AC_SUBST([GIT_REPO], "k2hr3_get_resource")
AC_SUBST([DEV_EMAIL], "`echo ${DEBEMAIL:-antpickax-support@mail.yahoo.co.jp}`")
AC_SUBST([DEV_NAME], "`echo ${DEBFULLNAME:-K2HR3_DEVELOPER}`")

AC_SUBST([RPMCHANGELOG], "`$(pwd)/buildutils/make_rpm_changelog.sh $(pwd)/ChangeLog`")
AC_SUBST([SHORTDESC], "Get K2HR3 Resource Helper for Systemd service")
AC_SUBST([PKG_VERSION], "`$(pwd)/buildutils/make_variables.sh -pkg_version`")
AC_SUBST([PKGLICENSE], "`grep License COPYING | sed 's/ License//g'`")
AC_SUBST([DEBCOPYING], "`tail -n +5 COPYING | sed 's/^$/./g' | sed 's/^/ /g'`")
AC_SUBST([DEBHELPER_DEP], "`$(pwd)/buildutils/make_variables.sh -debhelper_dep`")
AC_SUBST([RPMPKG_GROUP], ["`$(pwd)/buildutils/make_variables.sh -rpmpkg_group | sed 's#NEEDRPMGROUP#Group: Applications/Other#g'`"])
AC_SUBST([CONFIGUREWITHOPT], "")
AM_SUBST_NOTMAKE([CURRENTREV])
AM_SUBST_NOTMAKE([RPMCHANGELOG])
AM_SUBST_NOTMAKE([SHORTDESC])
AM_SUBST_NOTMAKE([DEBCOPYING])
AM_SUBST_NOTMAKE([DEBHELPER_DEP])
AM_SUBST_NOTMAKE([RPMPKG_GROUP])
AM_SUBST_NOTMAKE([CONFIGUREWITHOPT])

#
# pkg-config for old version
#
AC_PATH_PROG(PKG_CONFIG, pkg-config, [AC_MSG_RESULT(no)])
AS_IF([test "$PKG_CONFIG" = "no"], [AC_MSG_ERROR(You have to install pkg-config to compile $PACKAGE_NAME v$PACKAGE_VERSION)])

#
# Config files
#
AC_CONFIG_FILES([Makefile
				src/Makefile
				buildutils/Makefile
				buildutils/control
				buildutils/copyright
				buildutils/k2hr3-get-resource.spec])

AC_OUTPUT

#
# Local variables:
# tab-width: 4
# c-basic-offset: 4
# End:
# vim600: noexpandtab sw=4 ts=4 fdm=marker
# vim<600: noexpandtab sw=4 ts=4
#
