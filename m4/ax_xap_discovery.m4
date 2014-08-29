AU_ALIAS([AC_XAP_LOOKUPS], [AX_XAP_LOOKUPS])
AC_DEFUN([AX_XAP_LOOKUPS],[

AC_MSG_CHECKING([for LOOKUPLOCATORS])
open_files=`ulimit -n`
	if test x$LOOKUPLOCATORS = x; then
		AC_MSG_ERROR([LOOKUPLOCATORS variable must be set])
	else
		AC_MSG_RESULT($LOOKUPLOCATORS)
	fi;

AC_MSG_CHECKING([for at least two LUS instances])
lus_count=`echo $LOOKUPLOCATORS | awk '{n=split($[0], array, ",")} END{print n }'`
	if (("$lus_count" > 1)); then	
		AC_MSG_RESULT([found $lus_count])
	else
		AC_MSG_RESULT([LUS count is too low $lus_count])
	fi;

lus_host=`echo $LOOKUPLOCATORS | awk -F "," '{ print $[1] }' | awk -F ":" '{ print $[1] }'`
AC_MSG_CHECKING([that LUS host $lus_host is reachable])
if ! ping -c 1 -W 5 "$lus_host" &>/dev/null ; then 
	AC_MSG_ERROR([$lus_host is not reachable])
else
	AC_MSG_RESULT([ok])	
fi
lus_host=`echo $LOOKUPLOCATORS | awk -F "," '{ print $[2] }' | awk -F ":" '{ print $[1] }'`
AC_MSG_CHECKING([that LUS host $lus_host is reachable])
if ! ping -c 1 -W 5 "$lus_host" &>/dev/null ; then 
	AC_MSG_ERROR([$lus_host is not reachable])
else
	AC_MSG_RESULT([ok])	
fi


AC_MSG_CHECKING([for NIC_ADDR binding])
if test x$NIC_ADDR = x; then
		AC_MSG_ERROR([NIC_ADDR variable must be set])
	else
		AC_MSG_RESULT($NIC_ADDR)
fi;

AC_MSG_CHECKING([that NIC_ADDR is not bound to 127.0.0.1])
if  echo $NIC_ADDR | grep 127.0.0.1 &> /dev/null; then 
		AC_MSG_ERROR([NIC_ADDR variable cannot be set to 127.0.0.1])
	else
		AC_MSG_RESULT([ok])
fi;

AC_MSG_CHECKING([that NIC_ADDR is not bound to localhost])
if  echo $NIC_ADDR | grep localhost &> /dev/null; then 
		AC_MSG_ERROR([NIC_ADDR cannot be set to localhost])
	else
		AC_MSG_RESULT([ok])
fi;

AC_MSG_CHECKING([that multicast is disabled in GSA_JAVA_OPTIONS])
if  echo $GSA_JAVA_OPTIONS | grep "\-Dcom.gs.multicast.enabled=false" &> /dev/null; then 
		AC_MSG_RESULT([ok])
	else
		AC_MSG_ERROR([multicast must be disabled via -Dcom.gs.multicast.enabled=false])
fi;

])


