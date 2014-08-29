AU_ALIAS([AC_XAP_LRMI], [AX_XAP_LRMI])
AC_DEFUN([AX_XAP_LRMI],[

AC_MSG_CHECKING([for client LRMI connection pool settings])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.transport_protocol.lrmi.max-conn-pool" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_NOTICE([You may need to change the com.gs.transport_protocol.lrmi.max-conn-pool value (1024) to have a smaller number. The default value might be high for an application with multiple partitions.])
fi;

AC_MSG_CHECKING([for server LRMI max threads setting])
if  echo $EXT_JAVA_OPTIONS | grep "\-Dcom.gs.transport_protocol.lrmi.max-threads" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_NOTICE([You may need to change the com.gs.transport_protocol.lrmi.max-threads value (1024) to account for higher throughput])
fi;

])