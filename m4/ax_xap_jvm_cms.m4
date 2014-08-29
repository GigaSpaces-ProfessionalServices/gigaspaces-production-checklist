AU_ALIAS([AC_XAP_JVM_CMS], [AX_XAP_JVM_CMS])
AC_DEFUN([AX_XAP_JVM_CMS],[

AC_MSG_CHECKING([for -server])
if  echo $GSC_JAVA_OPTIONS | grep "\-server" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([JVM -server setting not present])
fi;

AC_MSG_CHECKING([for -XX:+UseConcMarkSweepGC])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+UseConcMarkSweepGC" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+UseConcMarkSweepGC not set])
fi;

AC_MSG_CHECKING([for -XX:+UseParNewGC])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+UseParNewGC" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+UseParNewGC not set])
fi;

AC_MSG_CHECKING([for -Xmn (young gen size)])
if  echo $GSC_JAVA_OPTIONS | grep "\-Xmn" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([young gen must be set])
fi;

AC_MSG_CHECKING([for -XX:CMSInitiatingOccupancyFraction=60])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:CMSInitiatingOccupancyFraction=60" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:CMSInitiatingOccupancyFraction=60 not set])
fi;

AC_MSG_CHECKING([for -XX:+UseCMSInitiatingOccupancyOnly])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+UseCMSInitiatingOccupancyOnly" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+UseCMSInitiatingOccupancyOnly not set])
fi;

AC_MSG_CHECKING([for -XX:MaxPermSize=256m])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:MaxPermSize=256m" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:MaxPermSize=256m not set])
fi;

AC_MSG_CHECKING([for -XX:+ExplicitGCInvokesConcurrent])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+ExplicitGCInvokesConcurrent" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+ExplicitGCInvokesConcurrent not set])
fi;

AC_MSG_CHECKING([for -XX:+UseCompressedOops])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+UseCompressedOops" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+UseCompressedOops not set])
fi;

AC_MSG_CHECKING([for -XX:+CMSClassUnloadingEnabled])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+CMSClassUnloadingEnabled" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+CMSClassUnloadingEnabled not set])
fi;

AC_MSG_CHECKING([for -XX:+CMSParallelRemarkEnabled])
if  echo $GSC_JAVA_OPTIONS | grep "\-XX:+CMSParallelRemarkEnabled" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([-XX:+CMSParallelRemarkEnabled not set])
fi;

])
