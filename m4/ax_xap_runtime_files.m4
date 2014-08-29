AU_ALIAS([AC_XAP_RUNTIME_FILES], [AX_XAP_RUNTIME_FILES])
AC_DEFUN([AX_XAP_RUNTIME_FILES],[

AC_MSG_CHECKING([for deploy folder settings])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.deploy" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_NOTICE([-Dcom.gs.deploy is not set, still using defaults])
fi;

AC_MSG_CHECKING([for work folder settings])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.work" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_NOTICE([-Dcom.gs.work is not set, still using defaults])
fi;

AC_MSG_CHECKING([for log folder settings])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.log" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_NOTICE([-Dcom.gs.log is not set, still using defaults])
fi;

])