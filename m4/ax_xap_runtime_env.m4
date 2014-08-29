AU_ALIAS([AC_XAP_RUNTIME_ENV], [AX_XAP_RUNTIME_ENV])
AC_DEFUN([AX_XAP_RUNTIME_ENV],[

AC_MSG_CHECKING([for GSA_JAVA_OPTIONS heap size])
if  echo $GSA_JAVA_OPTIONS | grep "\-Xmx256m" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([GSA_JAVA_OPTIONS heap is not set properly])
fi;

AC_MSG_CHECKING([for GSC_JAVA_OPTIONS heap size])
if  echo $GSC_JAVA_OPTIONS | grep "\-Xmx" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([GSC_JAVA_OPTIONS heap is not set])
fi;

AC_MSG_CHECKING([for GSM_JAVA_OPTIONS heap size])
if  echo $GSM_JAVA_OPTIONS | grep "\-Xmx1024m" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		if  echo $GSM_JAVA_OPTIONS | grep "\-Xmx1g" &> /dev/null; then 
			AC_MSG_RESULT([ok])
			
		else
				AC_MSG_ERROR([LUS_JAVA_OPTIONS heap is not set properly])
		fi;
fi;

AC_MSG_CHECKING([for LUS_JAVA_OPTIONS heap size])
if  echo $LUS_JAVA_OPTIONS | grep "\-Xmx1024m" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		if  echo $LUS_JAVA_OPTIONS | grep "\-Xmx1g" &> /dev/null; then 
			AC_MSG_RESULT([ok])
		else
			AC_MSG_ERROR([LUS_JAVA_OPTIONS heap is not set properly])
		fi;
		
fi;

])
