DIRLIST			:=
TARLIST			:=

NVRAM_NAME		:= nvram
VER_$(NVRAM_NAME)	:= 0.1.0
NVRAM			:= $(NVRAM_NAME)-$(VER_$(NVRAM_NAME))
NAME_$(NVRAM)		:= $(NVRAM_NAME)
VER_$(NVRAM)		:= $(VER_$(NVRAM_NAME))
DL_$(NVRAM)		:= $(SRC_APPS_REL_DIR)
TAR_$(NVRAM)		:= nvram
SEC_$(NVRAM)		:= builtinlib
PRIO_$(NVRAM)		:= required
DEP_$(NVRAM)		:= 
DESC_$(NVRAM)		:= Enhanced shared sercomm libscnvram
DIRLIST			+= $(NVRAM)

CORE_WORK_NAME		:= $(PROJECT_NAME)-core
VER_$(CORE_WORK_NAME)	:= 0.1.0
CORE_WORK		:= $(CORE_WORK_NAME)-$(VER_$(CORE_WORK_NAME))
NAME_$(CORE_WORK)	:= $(CORE_WORK_NAME)
VER_$(CORE_WORK)	:= $(VER_$(CORE_WORK_NAME))
DL_$(CORE_WORK)		:= void
TAR_$(CORE_WORK)	:= void
SEC_$(CORE_WORK)	:= thirdparty
PRIO_$(CORE_WORK)	:= required
DEP_$(CORE_WORK)	:= $(NVRAM_NAME)
DESC_$(CORE_WORK)	:= Main work tool

UTELNETD_NAME		:= utelnetd
VER_$(UTELNETD_NAME)	:= 0.1.11
UTELNETD		:= $(UTELNETD_NAME)-$(VER_$(UTELNETD_NAME))
NAME_$(UTELNETD)	:= $(UTELNETD_NAME)
VER_$(UTELNETD)		:= $(VER_$(UTELNETD_NAME))
DL_$(UTELNETD)		:= http://public.pengutronix.de/software/utelnetd
TAR_$(UTELNETD)		:= $(UTELNETD).tar.gz
SEC_$(UTELNETD)		:= builtin
PRIO_$(UTELNETD)	:= standard
DEP_$(UTELNETD)		:= 
DESC_$(UTELNETD)	:= Small telnet daemon for standalone use
DIRLIST			+= $(UTELNETD)
TARLIST			+= $(UTELNETD)

IPROUTE2_NAME		:= iproute2
VER_$(IPROUTE2_NAME)	:= 4.10.0
IPROUTE2		:= $(IPROUTE2_NAME)-$(VER_$(IPROUTE2_NAME))
NAME_$(IPROUTE2)	:= $(IPROUTE2_NAME)
VER_$(IPROUTE2)		:= $(VER_$(IPROUTE2_NAME))
DL_$(IPROUTE2)		:= https://www.kernel.org/pub/linux/utils/net/iproute2
TAR_$(IPROUTE2)		:= $(IPROUTE2).tar.gz
SEC_$(IPROUTE2)		:= builtin
PRIO_$(IPROUTE2)	:= standard
DEP_$(IPROUTE2)		:= 
DESC_$(IPROUTE2)	:= Set of utilities for Linux networking
DIRLIST			+= $(IPROUTE2)
TARLIST			+= $(IPROUTE2)

NETPERF_NAME		:= netperf
VER_$(NETPERF_NAME)	:= 2.7.0
NETPERF			:= $(NETPERF_NAME)-$(VER_$(NETPERF_NAME))
NAME_$(NETPERF)		:= $(NETPERF_NAME)
VER_$(NETPERF)		:= $(VER_$(NETPERF_NAME))
DL_$(NETPERF)		:= https://fossies.org/linux/misc
#DL_$(NETPERF)		:= ftp://ftp.netperf.org/netperf
TAR_$(NETPERF)		:= $(NETPERF).tar.gz
SEC_$(NETPERF)		:= thirdparty
PRIO_$(NETPERF)		:= optional
DEP_$(NETPERF)		:= 
DESC_$(NETPERF)		:= TCP/UDP/sockets/etc performance benchmark
DIRLIST			+= $(NETPERF)
TARLIST			+= $(NETPERF)

NETWORKTEST_NAME	:= network-test
VER_$(NETWORKTEST_NAME)	:= 0.1.0
NETWORKTEST		:= $(NETWORKTEST_NAME)-$(VER_$(NETWORKTEST_NAME))
NAME_$(NETWORKTEST)	:= $(NETWORKTEST_NAME)
VER_$(NETWORKTEST)	:= $(VER_$(NETWORKTEST_NAME))
DL_$(NETWORKTEST)	:= void
TAR_$(NETWORKTEST)	:= void
SEC_$(NETWORKTEST)	:= thirdparty
PRIO_$(NETWORKTEST)	:= optional
DEP_$(NETWORKTEST)	:= $(NETPERF_NAME)
DESC_$(NETWORKTEST)	:= Enhanced network stress and network speed test scripts

QOS_NG_3642N_NAME	:= qos-netgear
VER_$(QOS_NG_3642N_NAME):= 36_42n
QOS_NG_3642N		:= $(QOS_NG_3642N_NAME)-$(VER_$(QOS_NG_3642N_NAME))
NAME_$(QOS_NG_3642N)	:= $(QOS_NG_3642N_NAME)
VER_$(QOS_NG_3642N)	:= $(VER_$(QOS_NG_3642N_NAME))
DL_$(QOS_NG_3642N)	:= void
TAR_$(QOS_NG_3642N)	:= void
SEC_$(QOS_NG_3642N)	:= thirdparty
PRIO_$(QOS_NG_3642N)	:= standard
DEP_$(QOS_NG_3642N)	:= 
DESC_$(QOS_NG_3642N)	:= Quality Of Service tool from Netgear firmware 36_42n

QOS_SQM_NAME		:= qos-sqm
VER_$(QOS_SQM_NAME)	:= 0.1.0
QOS_SQM			:= $(QOS_SQM_NAME)-$(VER_$(QOS_SQM_NAME))
NAME_$(QOS_SQM)		:= $(QOS_SQM_NAME)
VER_$(QOS_SQM)		:= $(VER_$(QOS_SQM_NAME))
DL_$(QOS_SQM)		:= void
TAR_$(QOS_SQM)		:= void
SEC_$(QOS_SQM)		:= thirdparty
PRIO_$(QOS_SQM)		:= standard
DEP_$(QOS_SQM)		:= $(NVRAM_NAME),$(CORE_WORK_NAME),$(IPROUTE2_NAME)
DESC_$(QOS_SQM)		:= Quality Of Service CeroWrt script tool

OPENSSL_NAME		:= openssl
VER_$(OPENSSL_NAME)	:= 1.0.0r
OPENSSL			:= $(OPENSSL_NAME)-$(VER_$(OPENSSL_NAME))

CURL_NAME		:= curl/curl
VER_$(CURL_NAME)	:= 7.36.0
CURL			:= $(CURL_NAME)-$(VER_$(CURL_NAME))

LIBARCHIVE_NAME		:= libarchive
VER_$(LIBARCHIVE_NAME)	:= 3.3.1
LIBARCHIVE		:= $(LIBARCHIVE_NAME)-$(VER_$(LIBARCHIVE_NAME))
NAME_$(LIBARCHIVE)	:= $(LIBARCHIVE_NAME)
VER_$(LIBARCHIVE)	:= $(VER_$(LIBARCHIVE_NAME))
DL_$(LIBARCHIVE)	:= http://www.libarchive.org/downloads
TAR_$(LIBARCHIVE)	:= $(LIBARCHIVE).tar.gz
SEC_$(LIBARCHIVE)	:= thirdpartylib
PRIO_$(LIBARCHIVE)	:= required
DEP_$(LIBARCHIVE)	:= 
DESC_$(LIBARCHIVE)	:= Portable efficient C library for many streaming archive formats
DIRLIST			+= $(LIBARCHIVE)
TARLIST			+= $(LIBARCHIVE)

OPKG_UTILS_NAME		:= opkg-utils
VER_$(OPKG_UTILS_NAME)	:= 0.3.4
OPKG_UTILS		:= $(OPKG_UTILS_NAME)-$(VER_$(OPKG_UTILS_NAME))
NAME_$(OPKG_UTILS)	:= $(OPKG_UTILS_NAME)
VER_$(OPKG_UTILS)	:= $(VER_$(OPKG_UTILS_NAME))
DL_$(OPKG_UTILS)	:= http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/snapshot
TAR_$(OPKG_UTILS)	:= $(OPKG_UTILS).tar.gz
SEC_$(OPKG_UTILS)	:= thirdparty
PRIO_$(OPKG_UTILS)	:= required
DEP_$(OPKG_UTILS)	:= 
DESC_$(OPKG_UTILS)	:= Lightweight package prepare and build management system
DIRLIST			+= $(OPKG_UTILS)
TARLIST			+= $(OPKG_UTILS)

OPKG_NAME		:= opkg
VER_$(OPKG_NAME)	:= 0.3.4
OPKG			:= $(OPKG_NAME)-$(VER_$(OPKG_NAME))
NAME_$(OPKG)		:= $(OPKG_NAME)
VER_$(OPKG)		:= $(VER_$(OPKG_NAME))
DL_$(OPKG)		:= http://downloads.yoctoproject.org/releases/opkg
TAR_$(OPKG)		:= $(OPKG).tar.gz
SEC_$(OPKG)		:= thirdparty
PRIO_$(OPKG)		:= required
DEP_$(OPKG)		:= 
DESC_$(OPKG)		:= Lightweight package management system
DIRLIST			+= $(OPKG)
TARLIST			+= $(OPKG)

BUILTINLIB		:=
BUILTIN			:=
THIRDPARTYLIB		:=
THIRDPARTY		:=
BUILTINLIB 		+= $(NVRAM)
THIRDPARTY		+= $(CORE_WORK)
ifndef LOCAL
BUILTIN			+= $(UTELNETD)
BUILTIN			+= $(IPROUTE2)
THIRDPARTYLIB		+= $(LIBARCHIVE)
THIRDPARTY		+= $(NETPERF)
THIRDPARTY		+= $(NETWORKTEST)
THIRDPARTY		+= $(QOS_NG_3642N)
THIRDPARTY		+= $(QOS_SQM)
THIRDPARTY		+= $(OPKG_UTILS)
THIRDPARTY		+= $(OPKG)
endif

SUBDIRS			:=
SUBDIRS			+= $(BUILTINLIB)
SUBDIRS			+= $(THIRDPARTYLIB)
SUBDIRS			+= $(BUILTIN)
SUBDIRS			+= $(THIRDPARTY)

