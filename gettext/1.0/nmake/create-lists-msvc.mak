# Convert the source listing to object (.obj) listing in
# another NMake Makefile module, include it, and clean it up.
# This is a "fact-of-life" regarding NMake Makefiles...
# This file does not need to be changed unless one is maintaining the NMake Makefiles

# For those wanting to add things here:
# To add a list, do the following:
# # $(description_of_list)
# if [call create-lists.bat header $(makefile_snippet_file) $(variable_name)]
# endif
#
# if [call create-lists.bat file $(makefile_snippet_file) $(file_name)]
# endif
#
# if [call create-lists.bat footer $(makefile_snippet_file)]
# endif
# ... (repeat the if [call ...] lines in the above order if needed)
# !include $(makefile_snippet_file)
#
# (add the following after checking the entries in $(makefile_snippet_file) is correct)
# (the batch script appends to $(makefile_snippet_file), you will need to clear the file unless the following line is added)
#!if [del /f /q $(makefile_snippet_file)]
#!endif

# In order to obtain the .obj filename that is needed for NMake Makefiles to build DLLs/static LIBs or EXEs, do the following
# instead when doing 'if [call create-lists.bat file $(makefile_snippet_file) $(file_name)]'
# (repeat if there are multiple $(srcext)'s in $(source_list), ignore any headers):
# !if [for %c in ($(source_list)) do @if "%~xc" == ".$(srcext)" @call create-lists.bat file $(makefile_snippet_file) $(intdir)\%~nc.obj]
#
# $(intdir)\%~nc.obj needs to correspond to the rules added in build-rules-msvc.mak
# %~xc gives the file extension of a given file, %c in this case, so if %c is a.cc, %~xc means .cc
# %~nc gives the file name of a given file without extension, %c in this case, so if %c is a.cc, %~nc means a

NULL=

# Include iconv source files
!include gettext-runtime-sources.mk

# Create the list of .obj files
!if [call create-lists.bat header gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak intl_runtime_OBJS]
!endif

!if [for %c in ($(INTL_RUNTIME_SRCS)) do @if "%~xc" == ".c" @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\intl-runtime\%~nc.obj]
!endif

!if [@call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\intl-runtime\libintl.res]
!endif

!if [call create-lists.bat footer gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak intl_gnulib_OBJS]
!endif

!if [for %c in ($(GETTEXT_RUNTIME_INTL_GNULIB_SRCS)) do @if "%~xc" == ".c" @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\intl-gnulib\%~nc.obj]
!endif

!if [for %d in (glthread unicase unictype uniwidth) do @for %c in (..\gettext-runtime\intl\gnulib-lib\%d\*.c) do @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\intl-gnulib\%~nc.obj]
!endif

!if [call create-lists.bat footer gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak grt_OBJS]
!endif

!if [for %c in ($(GETTEXT_RUNTIME_BASE_GNULIB_SRCS:..\gettext-runtime\gnulib-lib\=)) do @if "%~xc" == ".c" @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\grt\%~nc.obj]
!endif

!if [for %d in (malloc glthread unicase unictype unistr uniwidth) do @for %c in (..\gettext-runtime\intl\gnulib-lib\%d\*.c) do @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\intl-gnulib\%~nc.obj]
!endif

!if [call create-lists.bat footer gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak libasprintf_OBJS]
!endif

!if [for %s in (lib-asprintf.c autosprintf.cc) do @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\asprintf\%~ns.obj]
!endif

!if [@call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\asprintf\libasprintf.res]
!endif

!if [call create-lists.bat footer gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak asprintf_gnulib_OBJS]
!endif

!if [for %c in ($(GETTEXT_RUNTIME_ASPRINTF_GNULIB_SRCS)) do @if "%~xc" == ".c" @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\asprintf-gnulib\%~nc.obj]
!endif

!if [for %d in (unicase unictype uniwidth) do @for %c in (..\gettext-runtime\libasprintf\gnulib-lib\%d\*.c) do @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\asprintf-gnulib\%~nc.obj]
!endif

!if [call create-lists.bat footer gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak gettext_runtime_tools]
!endif

!if [for %s in (..\gettext-runtime\src\*.c) do @call create-lists.bat file gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\%~ns.exe]
!endif

!if [call create-lists.bat footer gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!include gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak

!if [del /f /q gettext-runtime-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

# libtextstyle
!include libtextstyle-sources.mk

!if [call create-lists.bat header libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak libtextstyle_OBJS]
!endif

!if [for %s in ($(LIBTEXTSTYLE_BASE_SRCS:..\libtextstyle\lib\=)) do @call create-lists.bat file libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\libtextstyle\%~ns.obj ]
!endif

!if [for %d in (libxml) do @for %c in (..\libtextstyle\lib\%d\*.c) do @call create-lists.bat file libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\libtextstyle\libxml\%~nc.obj]
!endif

!if [for %d in (libcroco glib glthread unicase unictype unistr uniwidth) do @for %c in (..\libtextstyle\lib\%d\*.c) do @call create-lists.bat file libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\libtextstyle\%~nc.obj]
!endif

!if [@call create-lists.bat file libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\libtextstyle\libtextstyle.res]
!endif

!if [call create-lists.bat footer libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!include libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak

!if [del /f /q libtextstyle-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

# gettext-tools
!include gettext-tools-sources.mk

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak gettextlib_OBJS]
!endif

!if [for %s in ($(GNULIB_SRC_BASENAMES:.c=)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextlib\%s.obj ]
!endif

!if [for %d in (libxml) do @for %c in (..\gettext-tools\gnulib-lib\%d\*.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextlib\libxml\%~nc.obj]
!endif

!if [for %d in (glthread malloc unicase uniconv unictype unilbrk uniname uninorm unistr uniwidth) do @for %c in (..\gettext-tools\gnulib-lib\%d\*.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextlib\%~nc.obj]
!endif

!if [call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextlib\libgettextlib.res ]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak libgrep_OBJS]
!endif

!if [for %s in ($(LIBGREP_SOURCES) $(LIBGREP_GNULIB_BASE_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\libgrep\%~ns.obj ]
!endif

!if [for %d in (glthread malloc) do @for %s in (..\gettext-tools\libgrep\gnulib-lib\%d\*.c) do @if not "%~nxs" == "dynarray-skeleton.c" call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\libgrep\%~ns.obj ]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak gettextpo_gnulib_OBJS]
!endif

!if [for %s in ($(LIBGETTEXTPO_GNULIB_SRC_BASENAMES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gnu\%~ns.obj ]
!endif

!if [for %d in (glthread unicase uniconv unictype unilbrk unistr uniwidth) do @for %c in (..\gettext-tools\libgettextpo\%d\*.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gnu\%~nc.obj]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak gettextpo_OBJS]
!endif

!if [for %s in ($(LIBGETTEXTPO_AUX_SRCS:..\gettext-tools\src\=) gettext-po.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextpo\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextpo\libgettextpo.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak gettextsrc_OBJS]
!endif

!if [for %s in ($(LIBGETTEXTSRC_SRCS)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextsrc\%~ns.obj ]
!endif

!if [call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettextsrc\libgettextsrc.res ]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgattrib_OBJS]
!endif

!if [for %s in ($(MSGATTRIB_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgcat_OBJS]
!endif

!if [for %s in ($(MSGCAT_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgcmp_OBJS]
!endif

!if [for %s in ($(MSGCMP_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgcomm_OBJS]
!endif

!if [for %s in ($(MSGCOMM_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgconv_OBJS]
!endif

!if [for %s in ($(MSGCONV_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgen_OBJS]
!endif

!if [for %s in ($(MSGEN_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgexec_OBJS]
!endif

!if [for %s in ($(MSGEXEC_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgfilter_OBJS]
!endif

!if [for %s in ($(MSGFILTER_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgfmt_OBJS]
!endif

!if [for %s in ($(MSGFMT_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msggrep_OBJS]
!endif

!if [for %s in ($(MSGGREP_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgmerge_OBJS]
!endif

!if [for %s in ($(MSGMERGE_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msgunfmt_OBJS]
!endif

!if [for %s in ($(MSGUNFMT_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msguniq_OBJS]
!endif

!if [for %s in ($(MSGUNIQ_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak recode_sr_latin_OBJS]
!endif

!if [for %s in ($(RECODE_SR_LATIN_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak typesitter_OBJS]
!endif

!if [for %s in (..\gettext-tools\tree-sitter-typescript-$(TREESITTER_VER)\lib\src\lib.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\treesitter\%~ns.obj]
!endif

!if [for %d in (d-$(TREESITTER_D_VER) go-$(TREESITTER_GO_VER) rust-$(TREESITTER_RUST_VER)) do @for %s in (..\gettext-tools\tree-sitter-%d\src\*.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\treesitter\%~ns.obj]
!endif

!if [for %d in (typescript tsx) do @for %s in (..\gettext-tools\tree-sitter-typescript-$(TREESITTER_TS_VER)\%d\src\*.c) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\treesitter\%~ns.obj]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak xgettext_OBJS]
!endif

!if [for %s in ($(XGETTEXT_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!if [call create-lists.bat header gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak msginit_OBJS]
!endif

!if [for %s in ($(MSGINIT_SOURCES)) do @call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\%~ns.obj ]
!endif

!if [@call create-lists.bat file gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak vs^$(VSVER)\^$(CFG)\^$(PLAT)\gettext-tools-tools\gettext.res]
!endif

!if [call create-lists.bat footer gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif

!include gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak

!if [del /f /q gettext-tools-objs-msvc$(VSVER)-$(PLAT).mak]
!endif
