AU_ALIAS([AC_XAP_SECURITY], [AX_XAP_SECURITY])
AC_DEFUN([AX_XAP_SECURITY],[

AC_MSG_CHECKING([for security enabled])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.security=enabled" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([security is disabled])
fi;

AC_MSG_CHECKING([for work folder settings])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.work" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_NOTICE([-Dcom.gs.work is not set, still using defaults])
fi;


])