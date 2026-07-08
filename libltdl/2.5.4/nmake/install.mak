# NMake Makefile snippet for copying the built libraries, utilities and headers to
# a path under $(PREFIX).

install: all
	@if not exist $(PREFIX)\bin\ md $(PREFIX)\bin
	@if not exist $(PREFIX)\lib\ md $(PREFIX)\lib
	@if not exist $(PREFIX)\include\libltdl\ @md $(PREFIX)\include\libltdl
	@copy /b $(LIBLTDL_DLL) $(PREFIX)\bin
	@copy /b $(LIBLTDL_DLL:.dll=.pdb) $(PREFIX)\bin
	@copy /b $(LIBLTDL_LIB) $(PREFIX)\lib
	@copy ..\libltdl\ltdl.h $(PREFIX)\include
	@for %c in (dlloader error system) do @copy ..\libltdl\libltdl\lt_%c.h $(PREFIX)\include\libltdl
	@-for %f in (AUTHORS COPYING README) do copy ..\%f $(PREFIX) & $(UNIX2DOS) $(PREFIX)\%f
