# GigaSpaces Production Checklist Tool

http://docs.gigaspaces.com/sbp/moving-into-production-checklist.html


The goals of this tool are:

  - To ensure that all XAP-required environment variables have been set properly.

  - To point out production setup mistakes at the JVM/OS/LRMI level.

  - To point out subtle caveats, corner cases and pitfalls, that may cause a
    GigaSpaces XAP grid to fail under future circumstances.

This tool is written in Autoconf and M4 macros, so it should be supported by any Unix/Linux machine.

## Building the tool

On any system:

    autoconf configure-xap-prod.ac > configure-xap-prod
    chmod u+x configure-xap-prod


## Running Tests 

The purpose of this script is to be run on each grid machine that will host XAP

First, make sure you are logged in as the user which will run XAP:

    $ sudo su - <xap_user>

Source your XAP configuration scripts (ones that set GSA_JAVA_OPTIONS, NIC_ADDR....etc):

    $ . ./setAppEnv.sh

Launch the tool:

    $ ./configure-xap-prod

Verify the test results:

    $ cat config.log


## Enabling/Disabling specific tests

To enable/disable specific tests, simply edit the configure-xap-prod.ac script to uncomment certain sections and re-build:

The following is a list of supported macros 

| Macro Name  | M4 library | Purpose  | 
| ------------- | ------------- | ------------- | 
| AC_CHECK_JAVA_HOME  | ax_check_java_home.m4  | Checks for JAVA_HOME and JDK | 
| AX_XAP_ULIMIT  | ax_xap_os.m4  | Checks for ulimit settings |
| AX_XAP_LOOKUPS  | ax_xap_discovery.m4  | Checks for LUS discovery settings and connectivity |
| AX_XAP_RUNTIME_ENV  | ax_xap_runtime.m4  | Checks for XAP runtime variables GSA/GSC/GSM/LUS |
| AX_XAP_RUNTIME_FILES  | ax_xap_runtime_files.m4  | Checks for externalizing work/deploy/log folders |
| AX_XAP_JVM_CMS  | ax_xap_jvm_cms.m4  | Checks for GSC JVM settings for CMS collector |
| AX_XAP_LRMI  | ax_xap_lrmi.m4  | Checks for LRMI client/server connection pool settings |

