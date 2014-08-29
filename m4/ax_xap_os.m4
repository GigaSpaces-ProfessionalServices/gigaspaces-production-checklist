AU_ALIAS([AC_XAP_ULIMIT], [AX_XAP_ULIMIT])
AC_DEFUN([AX_XAP_ULIMIT],[

AC_MSG_CHECKING([for ulimit max open file descriptors])
open_files=`ulimit -n`
	if (("$open_files" > 16000)); then	
		AC_MSG_RESULT($open_files)
	else
		AC_MSG_ERROR([ulimit -n too low! $open_files])
	fi;

AC_MSG_CHECKING([for maximum user processes])
max_user_proc=`ulimit -u`
if (("$max_user_proc" > 16000)); then	
	AC_MSG_RESULT($max_user_proc)
else
	AC_MSG_RESULT([ulimit -u too low! $max_user_proc])
fi;

])

