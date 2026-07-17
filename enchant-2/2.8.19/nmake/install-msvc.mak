# NMake Makefile snippet for copying the built libraries, utilities and headers to
# a path under $(PREFIX).

install: all
	@if not exist $(PREFIX)\bin\ mkdir $(PREFIX)\bin
	@if not exist $(PREFIX)\lib\enchant-$(ENCHANT_VERSION_MAJOR)\ mkdir $(PREFIX)\lib\enchant-$(ENCHANT_VERSION_MAJOR)
	@if not exist $(PREFIX)\enchant-$(ENCHANT_VERSION_MAJOR)-providers-pdb\ mkdir $(PREFIX)\enchant-$(ENCHANT_VERSION_MAJOR)-providers-pdb
	@if not exist $(PREFIX)\include\enchant-$(ENCHANT_VERSION_MAJOR)\ @mkdir $(PREFIX)\include\enchant-$(ENCHANT_VERSION_MAJOR)
	@for %%f in (enchant-$(ENCHANT_VERSION_MAJOR)-0) do @for %%x in (dll pdb) do @copy $(OUTDIR)\%%f.%%x $(PREFIX)\bin
	@for %%f in (enchant-$(ENCHANT_VERSION_MAJOR)) do @for %%x in (lib) do @copy $(OUTDIR)\%%f.%%x $(PREFIX)\lib
	@for %%t in (enchant enchant-lsmod) do @for %%x in (exe pdb) do @copy $(OUTDIR)\%%t-2.%%x $(PREFIX)\bin
	@for %%h in (enchant.h enchant++.h) do @copy "..\lib\%%h" $(PREFIX)\include\enchant-$(ENCHANT_VERSION_MAJOR)
	@for %%t in (winspell hunspell nuspell) do @for %%x in (dll) do @for %f in ($(OUTDIR)\enchant_%%t.%%x) do @copy %%f $(PREFIX)\lib\enchant-$(ENCHANT_VERSION_MAJOR)
	@for %%t in (winspell hunspell nuspell) do @for %%x in (pdb) do @for %f in ($(OUTDIR)\enchant_%%t.%%x) do @copy %%f $(PREFIX)\enchant-$(ENCHANT_VERSION_MAJOR)-providers-pdb
	@-$(PYTHON) enchantpc.py --version=$(ENCHANT_VERSION) & if exist enchant-$(ENCHANT_VERSION_MAJOR).pc (if not exist $(PREFIX)\lib\pkgconfig\ md $(PREFIX)\lib\pkgconfig) & move enchant-$(ENCHANT_VERSION_MAJOR).pc $(PREFIX)\lib\pkgconfig
