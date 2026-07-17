# NMake Makefile portion for enabling features for Windows builds

# You may change these lines to customize the .lib files that will be linked to

# Please do not change anything beneath this line unless maintaining the NMake Makefiles
# Bare minimum features and sources built into libiconv on Windows
!ifndef BASE_INCLUDEDIR
BASE_INCLUDEDIR = $(PREFIX)\include
!endif
!ifndef BASE_LIBDIR
BASE_LIBDIR = $(PREFIX)\lib
!endif
!ifndef BASE_TOOLS_PATH
BASE_TOOLS_PATH = $(PREFIX)\bin
!endif

# Please do not change anything beneath this line unless maintaining the NMake Makefiles
OUTDIR = vs$(VSVER)\$(CFG)\$(PLAT)
GLIB_API_VERSION = 2.0
DEPS_MKFILE = deps-vs$(VSVER)-$(PLAT)-$(CFG).mak
BUILD_MKFILE_SNIPPET = enchant-vs$(VSVER)-$(PLAT)-$(CFG).mak

ENCHANT_VERSION_MAJOR=2
ENCHANT_VERSION_MINOR=8
ENCHANT_VERSION_MICRO=19
ENCHANT_VERSION=$(ENCHANT_VERSION_MAJOR).$(ENCHANT_VERSION_MINOR).$(ENCHANT_VERSION_MICRO)

# Gather up dependencies for their include directories and lib/bin dirs.
!if [for %t in (GLIB HUNSPELL NUSPELL) do @(echo !ifndef %t_INCLUDEDIR>>$(DEPS_MKFILE) & echo %t_INCLUDEDIR=^$^(BASE_INCLUDEDIR^)>>$(DEPS_MKFILE) & echo !endif>>$(DEPS_MKFILE))]
!endif
!if [for %t in (GLIB HUNSPELL NUSPELL) do @(echo !ifndef %t_LIBDIR>>$(DEPS_MKFILE) & echo %t_LIBDIR=^$^(BASE_LIBDIR^)>>$(DEPS_MKFILE) & echo !endif>>$(DEPS_MKFILE))]
!endif

!include $(DEPS_MKFILE)

!if [del /f/q $(DEPS_MKFILE)]
!endif

BASE_DEFINES =	\
	$(CFLAGS)	\
	/DDLL_EXPORT	\
	/DPIC	\
	/D_WIN32_WINNT=0x0601	\
	/FIconfig.h

BASE_DEFINES_CXX =	\
	/EHsc	\
	$(BASE_DEFINES)

ENCHANT_GNULIB_DEFINES =	\
	$(BASE_DEFINES)	\
	/D_CRT_SECURE_NO_WARNINGS	\
	/D_CRT_NONSTDC_NO_WARNINGS	\
	/DIN_LIBRARY	\
	/DENABLE_COSTLY_RELOCATABLE	\
	/DINSTALLDIR=BINDIR	\
	/DHAVE_CONFIG_H	\
	/DNO_XMALLOC	\
	/FIconfigmake.h

ENCHANT_BASE_DEFINES =	\
	$(BASE_DEFINES)	\
	/FImsvc_recommended_pragmas.h

ENCHANT_DLL_DEFINES =	\
	$(ENCHANT_BASE_DEFINES)	\
	/DG_LOG_DOMAIN=\"libenchant\"	\
	/D_ENCHANT_BUILD=1	\
	/DENCHANT_VERSION_STRING=\"$(ENCHANT_VERSION)\"	\
	/DENCHANT_MAJOR_VERSION=\"$(ENCHANT_VERSION_MAJOR)\"

ENCHANT_UTILS_DEFINES =	\
	$(ENCHANT_BASE_DEFINES)	\
	/DENCHANT_MAJOR_VERSION=\"$(ENCHANT_VERSION_MAJOR)\"

!if "$(BASE_LIBDIR)" != "$(GLIB_LIBDIR)"
GLIB_LDFLAGS = /libpath:$(GLIB_LIBDIR)
!endif

GOBJECT_LIBS = gobject-$(GLIB_API_VERSION).lib gmodule-$(GLIB_API_VERSION).lib glib-$(GLIB_API_VERSION).lib
GLIB_LDFLAGS = $(GLIB_LDFLAGS) $(GOBJECT_LIBS)

ENCHANT_GNULIB_INCLUDES =	\
	/I..\msvc\libgnu /I..\libgnu /I..\msvc

ENCHANT_INCLUDES =	\
	/I..\lib	\
	$(ENCHANT_GNULIB_INCLUDES)	\
	/I$(GLIB_INCLUDEDIR)\glib-$(GLIB_API_VERSION)	\
	/I$(GLIB_LIBDIR)\glib-$(GLIB_API_VERSION)\include

PROVIDERS_LDFLAG = /export:init_enchant_provider
HUNSPELL_INCLUDES = /I$(HUNSPELL_INCLUDEDIR)\hunspell
NUSPELL_INCLUDES = /I$(NUSPELL_INCLUDEDIR)

!if "$(BASE_LIBDIR)" != "$(HUNSPELL_LIBDIR)"
HUNSPELL_LDFLAGS = /libpath:$(HUNSPELL_LIBDIR)
!endif

HUNSPELL_LIB = hunspell.lib
HUNSPELL_LDFLAGS = $(HUNSPELL_LDFLAGS) $(HUNSPELL_LIB)

!if "$(BASE_LIBDIR)" != "$(NUSPELL_LIBDIR)"
NUSPELL_LDFLAGS = /libpath:$(NUSPELL_LIBDIR)
!endif

NUSPELL_LIB = nuspell.lib
NUSPELL_LDFLAGS = $(NUSPELL_LDFLAGS) $(NUSPELL_LIB)

# We build the ENCHANT DLL/LIB with the tools and WinSpell provider at least
ENCHANT_GNULIB_LIB = vs$(VSVER)\$(CFG)\$(PLAT)\enchant-gnulib.lib
ENCHANT_DLL=$(OUTDIR)\enchant-$(ENCHANT_VERSION_MAJOR)-0.dll
ENCHANT_LIB=$(OUTDIR)\enchant-$(ENCHANT_VERSION_MAJOR).lib
ENCHANT_WINSPELL_DLL=$(OUTDIR)\enchant_winspell.dll
ENCHANT_HUNSPELL_DLL=$(OUTDIR)\enchant_hunspell.dll
ENCHANT_NUSPELL_DLL=$(OUTDIR)\enchant_nuspell.dll

ENCHANT_PROVIDERS =

!if $(ENCHANT_VERSION_MAJOR) == 2 && ($(ENCHANT_VERSION_MINOR) == 8 && $(ENCHANT_VERSION_MICRO) >= 19) || $(ENCHANT_VERSION_MINOR) > 8
ENCHANT_PROVIDERS = $(ENCHANT_PROVIDERS) $(ENCHANT_WINSPELL_DLL)
!endif

!ifdef USE_HUNSPELL
ENCHANT_PROVIDERS = $(ENCHANT_PROVIDERS) $(ENCHANT_HUNSPELL_DLL)
!endif

!ifdef USE_NUSPELL
ENCHANT_PROVIDERS = $(ENCHANT_PROVIDERS) $(ENCHANT_NUSPELL_DLL)
!endif
