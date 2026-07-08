# NMake Makefile snippet for copying the built libraries, utilities and headers to
# a path under $(PREFIX).

install-pkg-config: libffi.pc
	@if not exist $** echo *** $** is not generated!
	@if not exist $** echo *** Generate it later using ^$(PYTHON) --version=$(LIBFFI_VERSION) --prefix=^$(PREFIX)
	@if exist $** if not exist $(PREFIX)\lib\pkgconfig mkdir $(PREFIX)\lib\pkgconfig
	@if exist $** move $** $(PREFIX)\lib\pkgconfig

libffi.pc: config-msvc.mak ..\libffi.pc.in
	@-$(PYTHON) libffipc.py --version=$(LIBFFI_VERSION) --prefix=$(PREFIX)

install: all install-pkg-config
	@if not exist $(PREFIX)\bin\ md $(PREFIX)\bin
	@if not exist $(PREFIX)\lib\ md $(PREFIX)\lib
	@if not exist $(PREFIX)\include @md $(PREFIX)\include
	@copy /b $(LIBFFI_DLL) $(PREFIX)\bin
	@copy /b $(LIBFFI_DLL:.dll=.pdb) $(PREFIX)\bin
	@copy /b $(LIBFFI_LIB) $(PREFIX)\lib
	@copy .\msvc-conf\include\ffi.h $(PREFIX)\include
	@copy vs$(VSVER)\$(CFG)\$(PLAT)\libffi\ffitarget-$(ARCH_FAMILY).h $(PREFIX)\include
	@for %f in (..\LICENSE ..\README.md ..\doc\libffi.pdf) do copy /b %f $(PREFIX)
	@-for %f in (LICENSE README.md) do $(UNIX2DOS) $(PREFIX)\%f
