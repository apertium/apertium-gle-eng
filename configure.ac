#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.


AC_PREREQ([2.52])

m4_define([required_apertium_version], [3.3.0])
m4_define([required_lttoolbox_version], [3.3.0])

AC_INIT([apertium-gle-eng], [0.0.0], [https://sourceforge.net/p/apertium/tickets/], [https://sourceforge.net/p/apertium/])
AM_INIT_AUTOMAKE([1.11 -Wall -Wno-portability -Werror foreign])

AC_PROG_LN_S
AC_PROG_AWK

PKG_CHECK_MODULES([APERTIUM], apertium >= required_apertium_version)
PKG_CHECK_MODULES([LTTOOLBOX], lttoolbox >= required_lttoolbox_version)


AC_PATH_PROG(CGCOMP, cg-comp, no)
if test x$ac_cv_path_CGCOMP = x
then
  AC_MSG_ERROR([You don't have cg-comp installed.])
fi
if test x$ac_cv_path_CGCOMP = xno
then
  AC_MSG_ERROR([You don't have cg-comp installed.])
fi

AC_PATH_PROG(CGPROC, cg-proc, no)
if test x$ac_cv_path_CGPROC = x
then
  AC_MSG_ERROR([You don't have cg-proc installed.])
fi
if test x$ac_cv_path_CGPROC = xno
then
  AC_MSG_ERROR([You don't have cg-proc installed.])
fi

AC_PATH_PROG(HFSTPROC, hfst-proc, no)
if test x$ac_cv_path_HFSTPROC = x
then
  AC_MSG_ERROR([You don't have hfst-proc installed.])
fi
if test x$ac_cv_path_HFSTPROC = xno
then
  AC_MSG_ERROR([You don't have hfst-proc installed.])
fi

AC_PATH_PROG(HFSTLEXC, hfst-lexc, no)
if test x$ac_cv_path_HFSTLEXC = x
then
  AC_MSG_ERROR([You don't have hfst-lexc installed.])
fi
if test x$ac_cv_path_HFSTLEXC = xno
then
  AC_MSG_ERROR([You don't have hfst-lexc installed.])
fi

AC_PATH_PROG(XSLTPROC, xsltproc, no)
if test x$ac_cv_path_XSLTPROC = x
then
  AC_MSG_ERROR([You don't have xsltproc installed.])
fi
if test x$ac_cv_path_XSLTPROC = xno
then
  AC_MSG_ERROR([You don't have xsltproc installed.])
fi

AC_PATH_PROG(GZCAT, gzcat, no)
AC_PATH_PROG(ZCAT, zcat, no)

if test x$ac_cv_path_GZCAT = xno
then
  if test x$ac_cv_path_ZCAT = xno
  then
    AC_MSG_ERROR([No working zcat installed.])
  else
    AC_SUBST(ZCAT,[zcat])
  fi
else
  AC_SUBST(ZCAT,[gzcat])
fi


m4_ifdef([AP_CHECK_LING],[],[AC_MSG_ERROR([AP_CHECK_LING not defined, is apertium.m4 in ACLOCAL_PATH? See: https://wiki.apertium.org/wiki/Installation_troubleshooting])])

AP_CHECK_LING([1], [giella-gle])
#AP_CHECK_LING([2], [apertium-eng])

PKG_CHECK_MODULES(REGTEST, apertium-regtest >= 0.0.1, [],
                  [AC_MSG_WARN([Running tests requires apertium-regtest])])

AP_MKINCLUDE


AC_OUTPUT([Makefile apertium-gle-eng.pc])
