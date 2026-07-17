# NMake Makefile portion for compilation rules
# Items in here should not need to be edited unless
# one is maintaining the NMake build files.  The format
# of NMake Makefiles here are different from the GNU
# Makefiles.  Please see the comments about these formats.

# Inference rules for compiling the .obj files.
# Used for libs and programs with more than a single source file.
# Format is as follows
# (all dirs must have a trailing '\'):
#
# {$(srcdir)}.$(srcext){$(destdir)}.obj::
# 	$(CC)|$(CXX) $(cflags) /Fo$(destdir) /c @<<
# $<
# <<

{..\libgnu\}.c{$(OUTDIR)\enchant-gnulib\}.obj::
	@if not exist $(OUTDIR)\enchant-gnulib\ md $(OUTDIR)\enchant-gnulib
	$(CC) $(ENCHANT_GNULIB_DEFINES) $(ENCHANT_GNULIB_INCLUDES) /Fo$(OUTDIR)\enchant-gnulib\ /Fd$(OUTDIR)\enchant-gnulib\ /c @<<
$<
<<

{..\lib\}.c{$(OUTDIR)\libenchant\}.obj::
	@if not exist $(OUTDIR)\libenchant\ md $(OUTDIR)\libenchant
	$(CC) $(ENCHANT_DLL_DEFINES) $(ENCHANT_INCLUDES) /Fo$(OUTDIR)\libenchant\ /Fd$(OUTDIR)\libenchant\ /c @<<
$<
<<

{..\src\}.c{$(OUTDIR)\enchant-utils\}.obj::
	@if not exist $(OUTDIR)\enchant-utils\ md $(OUTDIR)\enchant-utils
	$(CC) $(ENCHANT_UTILS_DEFINES) $(ENCHANT_INCLUDES) /DVALA_EXTERN=extern /Fo$(OUTDIR)\enchant-utils\ /Fd$(OUTDIR)\enchant-utils\ /c @<<
$<
<<

# The WinSpell spell checker requires Windows 8+
$(OUTDIR)\enchant-providers\enchant_winspell.obj: ..\providers\enchant_winspell.cpp
	@if not exist $(@D)\ md $(@D)
	$(CXX) $(BASE_DEFINES_CXX:0x0601=0x0602) $(ENCHANT_INCLUDES) /Fo$(@D)\ /Fd$(@D)\ /c @<<
$**
<<

$(OUTDIR)\enchant-providers\enchant_hunspell.obj: ..\providers\enchant_hunspell.cpp
	@if not exist $(@D)\ md $(@D)
	$(CXX) $(BASE_DEFINES_CXX) $(ENCHANT_INCLUDES) $(HUNSPELL_INCLUDES) /Fo$(@D)\ /Fd$(@D)\ /c @<<
$**
<<

$(OUTDIR)\enchant-providers\enchant_nuspell.obj: ..\providers\enchant_nuspell.cpp
	@if not exist $(@D)\ md $(@D)
	$(CXX) $(BASE_DEFINES_CXX) /std:c++17 $(ENCHANT_INCLUDES) $(NUSPELL_INCLUDES) /Fo$(@D)\ /Fd$(@D)\ /c @<<
$**
<<

# Inference rules for building the test programs
# Used for programs with a single source file.
# Format is as follows
# (all dirs must have a trailing '\'):
#
# {$(srcdir)}.$(srcext){$(destdir)}.exe::
# 	$(CC)|$(CXX) $(cflags) $< /Fo$*.obj  /Fe$@ [/link $(linker_flags) $(dep_libs)]

# Rules for building .lib files
$(ENCHANT_LIB): $(ENCHANT_DLL)

$(ENCHANT_GNULIB_LIB): $(libgnu_OBJS)
	lib $(ARFLAGS) /out:$@ @<<
$**
<<

# Rules for linking DLLs
# Format is as follows (the mt command is needed for MSVC 2005/2008 builds):
# $(dll_name_with_path): $(dependent_libs_files_objects_and_items)
#	link /DLL [$(linker_flags)] [$(dependent_libs)] [/def:$(def_file_if_used)] [/implib:$(lib_name_if_needed)] -out:$@ @<<
# $(dependent_objects)
# <<
# 	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(ENCHANT_DLL): $(libenchant_OBJS) $(ENCHANT_GNULIB_LIB)
	link /DLL $(LDFLAGS) $(GLIB_LDFLAGS) /out:$@ /implib:$(ENCHANT_LIB) @<<
$**
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(ENCHANT_WINSPELL_DLL): $(ENCHANT_LIB) $(ENCHANT_GNULIB_LIB) $(OUTDIR)\enchant-providers\enchant_winspell.obj
	link /DLL $(LDFLAGS) $(GLIB_LDFLAGS) ole32.lib $(PROVIDERS_LDFLAG) /out:$@ @<<
$**
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(ENCHANT_HUNSPELL_DLL): $(ENCHANT_LIB) $(ENCHANT_GNULIB_LIB) $(OUTDIR)\enchant-providers\enchant_hunspell.obj
	link /DLL $(LDFLAGS) $(GLIB_LDFLAGS) $(HUNSPELL_LDFLAGS) $(PROVIDERS_LDFLAG) /out:$@ @<<
$**
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(ENCHANT_NUSPELL_DLL): $(ENCHANT_LIB) $(ENCHANT_GNULIB_LIB) $(OUTDIR)\enchant-providers\enchant_nuspell.obj
	link /DLL $(LDFLAGS) $(GLIB_LDFLAGS) $(NUSPELL_LDFLAGS) $(PROVIDERS_LDFLAG) /out:$@ @<<
$**
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

# Rules for linking Executables
# Format is as follows (the mt command is needed for MSVC 2005/2008 builds):
# $(dll_name_with_path): $(dependent_libs_files_objects_and_items)
#	link [$(linker_flags)] [$(dependent_libs)] -out:$@ @<<
# $(dependent_objects)
# <<
# 	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;1
$(OUTDIR)\enchant-$(ENCHANT_VERSION_MAJOR).exe: $(ENCHANT_LIB) $(ENCHANT_GNULIB_LIB) $(OUTDIR)\enchant-utils\enchant.obj $(OUTDIR)\enchant-utils\util.obj
$(OUTDIR)\enchant-lsmod-$(ENCHANT_VERSION_MAJOR).exe: $(ENCHANT_LIB) $(ENCHANT_GNULIB_LIB) $(OUTDIR)\enchant-utils\enchant-lsmod.obj $(OUTDIR)\enchant-utils\util.obj

$(OUTDIR)\enchant-$(ENCHANT_VERSION_MAJOR).exe $(OUTDIR)\enchant-lsmod-$(ENCHANT_VERSION_MAJOR).exe:
	link $(LDFLAGS) $(GLIB_LDFLAGS) /out:$@ @<<
$**
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;1

# Other .obj files requiring individual attention, that could not be covered by the inference rules.
# Format is as follows (all dirs must have a trailing '\'):
#
# $(obj_file):
# 	$(CC)|$(CXX) $(cflags) /Fo$(obj_destdir) /c @<<
# $(srcfile)
# <<

clean:
	@-del /f /q $(OUTDIR)\*.lib
	@-del /f /q $(OUTDIR)\*.exe.manifest
	@-del /f /q $(OUTDIR)\*.exe
	@-del /f /q $(OUTDIR)\*.dll.manifest
	@-del /f /q $(OUTDIR)\*.dll
	@-del /f /q $(OUTDIR)\*.ilk
	@-del /f /q $(OUTDIR)\enchant-providers\*.obj
	@-del /f /q $(OUTDIR)\enchant-providers\*.pdb
	@-del /f /q $(OUTDIR)\enchant-utils\*.obj
	@-del /f /q $(OUTDIR)\enchant-utils\*.pdb
	@-del /f /q $(OUTDIR)\libenchant\*.obj
	@-del /f /q $(OUTDIR)\libenchant\*.pdb
	@-del /f /q $(OUTDIR)\enchant-gnulib\*.obj
	@-del /f /q $(OUTDIR)\enchant-gnulib\*.pdb
	@-rmdir /s /q $(OUTDIR)
