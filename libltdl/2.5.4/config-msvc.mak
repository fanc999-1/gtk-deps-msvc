# NMake Makefile portion for enabling features for Windows builds

!include detectenv-msvc.mak

!ifndef UNIX2DOS
UNIX2DOS = unix2dos
!endif

# Please do not change anything beneath this line unless maintaining the NMake Makefiles
OUTDIR = vs$(VSVER)\$(CFG)\$(PLAT)

LIBLTDL_INCLUDES =  /I.\msvc /I..\libltdl /I.\msvc\libltdl\libltdl /I..\libltdl\libltdl
LIBLTDL_CFLAGS =	\
	$(CFLAGS) /DWIN32 /D_CRT_SECURE_NO_WARNINGS /D_CRT_NONSTDC_NO_WARNINGS	\
	/DDLL_EXPORT /DLT_CONFIG_H="<config.h>" /DLTDL /DLTDLOPEN=ltdl

LIBLTDLC_CFLAGS = $(LIBLTDL_CFLAGS)c
LIBLTDL_DLL_SUFFIX = -7

LIBLTDL_LIBNAME = ltdl.lib
LIBLTDL_DLLNAME = $(LIBLTDL_LIBNAME:.lib=)$(LIBLTDL_DLL_SUFFIX).dll

LIBLTDL_LIB = vs$(VSVER)\$(CFG)\$(PLAT)\$(LIBLTDL_LIBNAME)
LIBLTDL_DLL = vs$(VSVER)\$(CFG)\$(PLAT)\$(LIBLTDL_DLLNAME)
