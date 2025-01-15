# NMake Makefile portion for enabling features for Windows builds

# You may change these lines to customize the .lib files that will be linked to

# Please do not change anything beneath this line unless maintaining the NMake Makefiles
# Bare minimum features and sources built into libiconv on Windows
LIBICONV_VERSION_MAJOR=1
LIBICONV_VERSION_MINOR=18
LIBICONV_VERSION_MICRO=0
LIBICONV_VERSION=$(LIBICONV_VERSION_MAJOR).$(LIBICONV_VERSION_MINOR)

!ifndef GETTEXT_INCLUDES
GETTEXT_INCLUDES = $(PREFIX)\include
!endif

!ifndef GETTEXT_LIBDIR
GETTEXT_INCLUDES = $(PREFIX)\lib
!endif

ICONV_BASE_DEFINES =	\
	/DHAVE_CONFIG_H	\
	/D_CRT_SECURE_NO_WARNINGS	\
	/D_CRT_NONSTDC_NO_WARNINGS	\
	/D_WIN32_WINNT=0x0601	\
	/DDLL_EXPORT	\
	/DPIC	\
	$(CFLAGS)

ICONV_DLL_BASE_DEFINES =	\
	$(ICONV_BASE_DEFINES)	\
	/DBUILDING_DLL	\
	/DIN_LIBRARY	\
	/DNO_XMALLOC

ICONV_BASE_PATH_DEFINES =	\
	/DINSTALLDIR=\"c:/software.b/libiconv-1.18\"	\
	/DLOCALEDIR=\"c:/software.b/libiconv-1.18/share/locale\"

LIBCHARSET_CFLAGS =	\
	$(ICONV_DLL_BASE_DEFINES)	\
	$(ICONV_BASE_PATH_DEFINES)	\
	/DBUILDING_LIBCHARSET	\
	/DDLL_EXPORT

LIBICONV_CFLAGS =	\
	$(ICONV_DLL_BASE_DEFINES)	\
	$(ICONV_BASE_PATH_DEFINES)	\
	/DBUILDING_LIBICONV	\
	/DBUILDING_LIBCHARSET 	\
	/DENABLE_RELOCATABLE=1	\
	/DDLL_EXPORT	\
	/Dset_relocation_prefix=libiconv_set_relocation_prefix	\
	/Drelocate=libiconv_relocate	\
	/Drelocate2=libiconv_relocate2

ICONV_CFLAGS =	\
	$(ICONV_BASE_DEFINES)	\
	$(ICONV_BASE_PATH_DEFINES)	\
	/DDEPENDS_ON_LIBICONV	\
	/DEXEEXT=\".exe\"

!if $(PDBVER) < 14
ICONV_CFLAGS = $(ICONV_CFLAGS) /Dinline=__inline
!endif

BASE_LIBICONV_INCLUDES =	\
	/I..\msvc\srclib	\
	/I..\srclib	\
	/FIarg-nonnull.h	\
	/FIc++defs.h	\
	/FIwarn-on-use.h	\
	/FI_Noreturn.h

LIBCHARSET_INCLUDES =	\
	/I..\libcharset\lib	\
	/I..\msvc\libcharset	\
	/I..\libcharset	\
	/I..\msvc\libcharset\include

LIBICONV_INCLUDES =	\
	/I..\msvc	\
	/I..\lib	\
	/I..\msvc\include	\
	/I..\include	\
	/I..	\
	/I..\msvc\libcharset\include

ICONV_INCLUDES =	\
	/I..\msvc	\
	/I..\msvc\include	\
	$(BASE_LIBICONV_INCLUDES)

LIBICONV_RC_FLAGS =	\
	/dPACKAGE_VERSION_MAJOR=$(LIBICONV_VERSION_MAJOR)	\
	/dPACKAGE_VERSION_MINOR=$(LIBICONV_VERSION_MINOR)	\
	/dPACKAGE_VERSION_SUBMINOR=$(LIBICONV_VERSION_MICRO)	\
	/dPACKAGE_VERSION_STRING=\"$(LIBICONV_VERSION)\"

# We build the libiconv/libcharset DLL/LIB at least
CHARSET_LIB = vs$(VSVER)\$(CFG)\$(PLAT)\charset.lib
ICONV_LIB = vs$(VSVER)\$(CFG)\$(PLAT)\iconv.lib
ICONV_GNULIB_LIB = vs$(VSVER)\$(CFG)\$(PLAT)\iconv-gnulib.lib

LIBICONV_LIBS = $(CHARSET_LIB) $(ICONV_LIB)
ICONV_TOOLS = vs$(VSVER)\$(CFG)\$(PLAT)\iconv.exe

!ifdef NO_GETTEXT
ICONV_CFLAGS = $(ICONV_CFLAGS) /DNO_GETTEXT
ICONV_DEP_LIBS =
!else
ICONV_CFLAGS = $(ICONV_CFLAGS) /DDEPENDS_ON_LIBINTL=1
ICONV_INCLUDES = $(ICONV_INCLUDES) /I$(GETTEXT_INCLUDES)
ICONV_DEP_LIBS = /libpath:$(GETTEXT_LIBDIR) intl.lib
!endif
