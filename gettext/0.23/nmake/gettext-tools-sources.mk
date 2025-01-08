!if "$(PLAT)" == "Win32"
EXTRA_GNULIB_BASE_SRCS = malloc.c calloc.c
GETADDRINFO_SRCS = getaddrinfo.c
!endif

GETTEXT_LIB_BASE_FILES =	\
	access	\
	acl-errno-valid	\
	acl-internal	\
	addext	\
	allocator	\
	alphasort	\
	areadlink	\
	argmatch	\
	arpa_inet	\
	asnprintf	\
	asprintf	\
	asyncsafe-spin	\
	aszprintf	\
	backupfile	\
	basename-lgpl	\
	basename	\
	bcp47	\
	binary-io	\
	bitrotate	\
	btoc32	\
	byteswap	\
	c-ctype	\
	c-strcasecmp	\
	c-strcasestr	\
	c-strncasecmp	\
	c-strstr	\
	c32isalnum	\
	c32isalpha	\
	c32isblank	\
	c32iscntrl	\
	c32isdigit	\
	c32isgraph	\
	c32islower	\
	c32isprint	\
	c32ispunct	\
	c32isspace	\
	c32isupper	\
	c32isxdigit	\
	c32tolower	\
	c32width	\
	c32_apply_type_test	\
	c32_get_type_test	\
	canonicalize-lgpl	\
	canonicalize	\
	careadlinkat	\
	chdir-long	\
	classpath	\
	clean-temp-simple	\
	clean-temp	\
	cloexec	\
	close	\
	closedir	\
	closeout	\
	concat-filename	\
	copy-file-range	\
	copy-file	\
	csharpcomp	\
	csharpexec	\
	cygpath	\
	dirfd	\
	dirname-lgpl	\
	dirname	\
	dup-safer-flag	\
	dup-safer	\
	dup	\
	dup2	\
	error-progname	\
	error	\
	execute	\
	exitfail	\
	fatal-signal	\
	fchdir	\
	fcntl	\
	fd-hook	\
	fd-safer-flag	\
	fd-safer	\
	fdopen	\
	fdopendir	\
	file-set	\
	filenamecat-lgpl	\
	findprog-in	\
	findprog	\
	fnmatch	\
	float	\
	fopen	\
	free	\
	fstat	\
	fstatat	\
	fstrcmp	\
	ftell	\
	ftello	\
	full-write	\
	fwriteerror	\
	gai_strerror	\
	gcd	\
	get-permissions	\
	getcwd-lgpl	\
	getcwd	\
	getdelim	\
	getdtablesize	\
	getline	\
	getopt	\
	getopt1	\
	getprogname	\
	getrandom	\
	gettime	\
	gettimeofday	\
	gl_linkedhash_list	\
	gl_linked_list	\
	gl_list	\
	gl_xlist	\
	hard-locale	\
	hash-pjw	\
	hash-triple-simple	\
	hash	\
	ialloc	\
	inet_ntop	\
	isinf	\
	isnand	\
	isnanf	\
	isnanl	\
	iswctype	\
	javacomp	\
	javaexec	\
	javaversion	\
	localcharset	\
	localename-table	\
	localename-unsafe	\
	localename	\
	localtime	\
	lseek	\
	malloca	\
	math	\
	mbchar	\
	mbrtoc32	\
	mbrtowc	\
	mbsinit	\
	mbslen	\
	mbsrtoc32s	\
	mbsrtoc32s-state	\
	mbsstr	\
	mbswidth	\
	mbszero	\
	mbuiter	\
	mbuiterf	\
	mem-hash-map	\
	memmem	\
	mempcpy	\
	memrchr	\
	memset	\
	memset_explicit	\
	mkdir	\
	mkdtemp	\
	msvc-inval	\
	msvc-nothrow	\
	obstack	\
	omp-init	\
	open	\
	openat-die	\
	openat-proc	\
	openat	\
	opendir	\
	pipe-filter-aux	\
	pipe-filter-ii	\
	pipe-safer	\
	pipe	\
	pipe2-safer	\
	pipe2	\
	printf-args	\
	printf-frexp	\
	printf-frexpl	\
	printf-parse	\
	progname	\
	progreloc	\
	propername	\
	pthread-once	\
	qcopy-acl	\
	quotearg	\
	raise	\
	rawmemchr	\
	read-file	\
	read	\
	readdir	\
	readlink	\
	realloc	\
	reallocarray	\
	relocatable	\
	rewinddir	\
	rmdir	\
	safe-read	\
	safe-write	\
	same-inode	\
	save-cwd	\
	scandir	\
	secure_getenv	\
	set-permissions	\
	setenv	\
	setlocale	\
	setlocale_null-unlocked	\
	setlocale_null	\
	sf-istream	\
	sh-quote	\
	sig-handler	\
	sigaction	\
	sigprocmask	\
	snprintf	\
	sockets	\
	spawn-pipe	\
	spawn	\
	spawnattr_destroy	\
	spawnattr_init	\
	spawnattr_setflags	\
	spawnattr_setpgroup	\
	spawnattr_setsigmask	\
	spawni	\
	spawnp	\
	spawn_faction_addchdir	\
	spawn_faction_addclose	\
	spawn_faction_adddup2	\
	spawn_faction_addopen	\
	spawn_faction_destroy	\
	spawn_faction_init	\
	stat-time	\
	stat	\
	stat-w32	\
	stdio-write	\
	stdlib	\
	stpcpy	\
	stpncpy	\
	strchrnul	\
	strerror-override	\
	strerror	\
	striconv	\
	striconveh	\
	striconveha	\
	string-buffer-printf	\
	string-buffer	\
	string-desc-contains	\
	string-desc	\
	stripslash	\
	strnlen1	\
	strerror_r	\
	strstr	\
	strtol	\
	strtoul	\
	supersede	\
	sys_socket	\
	tempname	\
	timespec	\
	tmpdir	\
	trim	\
	unistd	\
	unlink	\
	unsetenv	\
	utime	\
	utimens	\
	vasnprintf	\
	vasprintf	\
	vaszprintf	\
	vsnprintf	\
	vsnzprintf	\
	wait-process	\
	waitpid	\
	wctype-h	\
	wctype	\
	wcwidth	\
	windows-mutex	\
	windows-once	\
	windows-path	\
	windows-recmutex	\
	windows-rwlock	\
	windows-spawn	\
	windows-spin	\
	windows-tls	\
	wmempcpy	\
	write	\
	xalloc-die	\
	xasprintf	\
	xconcat-filename	\
	xerror	\
	xmalloc	\
	xmalloca	\
	xmemdup0	\
	xreadlink	\
	xsetenv	\
	xsize	\
	xstrerror	\
	xstriconv	\
	xstriconveh	\
	xstring-buffer-printf	\
	xstring-buffer	\
	xstring-desc	\
	xvasprintf	\
	$(EXTRA_GNULIB_BASE_SRCS:.c=)	\
	$(GETADDRINFO_SRCS:.c=)

LIBGREP_SOURCES =	\
	iswctype.c	\
	kwset.c	\
	m-fgrep.c	\
	m-regex.c	\
	mbrlen.c	\
	mbszero.c	\
	nl_langinfo.c	\
	regex.c	\
	unistd.c	\
	wcrtomb.c	\
	wctype.c	\
	wctype-h.c

LIBGETTEXTPO_GNULIB_SRCS =	\
	asnprintf.c	\
	aszprintf.c	\
	asprintf.c	\
	basename-lgpl.c	\
	c-ctype.c	\
	c-strcasecmp.c	\
	c-strncasecmp.c	\
	c-strstr.c	\
	cloexec.c	\
	close.c	\
	concat-filename.c	\
	dup2.c	\
	error.c	\
	exitfail.c	\
	fcntl.c	\
	fd-hook.c	\
	fdopen.c	\
	float.c	\
	fopen.c	\
	free.c	\
	fstat.c	\
	fstrcmp.c	\
	fsync.c	\
	full-write.c	\
	fwriteerror.c	\
	gcd.c	\
	getdelim.c	\
	getdtablesize.c	\
	getline.c	\
	getprogname.c	\
	gl_linked_list.c	\
	gl_list.c	\
	gl_xlist.c	\
	ialloc.c	\
	isnanf.c	\
	isnanl.c	\
	localcharset.c	\
	malloca.c	\
	markup.c	\
	math.c	\
	mbszero.c	\
	mem-hash-map.c	\
	memmem.c	\
	memrchr.c	\
	msvc-inval.c	\
	msvc-nothrow.c	\
	obstack.c	\
	open.c	\
	printf-args.c	\
	printf-frexp.c	\
	printf-frexpl.c	\
	printf-parse.c	\
	pthread-once.c	\
	raise.c	\
	rawmemchr.c	\
	realloc.c	\
	reallocarray.c	\
	relocatable.c	\
	safe-write.c	\
	sigprocmask.c	\
	stat-time.c	\
	stat.c	\
	stat-w32.c	\
	stdio-write.c	\
	stdlib.c	\
	stpcpy.c	\
	stpncpy.c	\
	strchrnul.c	\
	strerror-override.c	\
	strerror_r.c	\
	strerror.c	\
	striconv.c	\
	striconveh.c	\
	striconveha.c	\
	string-desc-contains.c	\
	strstr.c	\
	string-desc.c	\
	unistd.c	\
	vasnprintf.c	\
	vasprintf.c	\
	vaszprintf.c	\
	windows-mutex.c	\
	windows-once.c	\
	windows-recmutex.c	\
	windows-rwlock.c	\
	windows-tls.c	\
	write.c	\
	xalloc-die.c	\
	xasprintf.c	\
	xconcat-filename.c	\
	xmalloc.c	\
	xmalloca.c	\
	xsize.c	\
	xstrerror.c	\
	xstriconv.c	\
	xvasprintf.c	\
	$(EXTRA_GNULIB_BASE_SRCS)

FORMAT_SOURCES =	\
	..\gettext-tools\woe32dll\c++format.cc	\
	format-c.c	\
	format-c++-brace.c	\
	format-python.c	\
	format-python-brace.c	\
	format-java.c	\
	format-java-printf.c	\
	format-csharp.c	\
	format-javascript.c	\
	format-scheme.c	\
	format-lisp.c	\
	format-elisp.c	\
	format-librep.c	\
	format-ruby.c	\
	format-sh.c	\
	format-awk.c	\
	format-lua.c	\
	format-pascal.c	\
	format-smalltalk.c	\
	format-qt.c	\
	format-qt-plural.c	\
	format-kde.c	\
	format-kde-kuit.c	\
	format-boost.c	\
	format-tcl.c	\
	format-perl.c	\
	format-perl-brace.c	\
	format-php.c	\
	format-gcc-internal.c	\
	format-gfc-internal.c

COMMON_SRCS =	\
	message.c	\
	pos.c	\
	po-error.c	\
	read-catalog-abstract.c	\
	po-charset.c	\
	read-po.c	\
	read-po-gram.c	\
	read-po-lex.c	\
	read-properties.c	\
	read-stringtable.c	\
	open-catalog.c	\
	dir-list.c	\
	str-list.c	\
	..\gettext-tools\woe32dll\c++xerror-handler.cc	\
  
LIBGETTEXTSRC_SRCS =	\
	$(COMMON_SRCS)	\
	$(FORMAT_SOURCES)	\
	msgl-ascii.c	\
	msgl-charset.c	\
	msgl-ofn.c	\
	msgl-iconv.c	\
	msgl-equal.c	\
	msgl-cat.c	\
	msgl-header.c	\
	msgl-english.c	\
	msgl-check.c	\
	file-list.c	\
	its.c \
	locating-rules.c \
	po-time.c	\
	plural-exp.c	\
	plural-eval.c	\
	plural-table.c	\
	sentence.c	\
	read-catalog.c	\
	read-desktop.c \
	read-catalog-file.c \
	read-catalog-special.c \
	search-path.c	\
	write-catalog.c	\
	write-properties.c	\
	write-stringtable.c	\
	write-po.c

LIBGETTEXTPO_AUX_SRCS =	\
	str-list.c	\
	message.c	\
	pos.c	\
	msgl-ascii.c	\
	write-catalog.c	\
	write-po.c	\
	po-charset.c	\
	read-catalog-special.c	\
	read-catalog-abstract.c	\
	read-catalog.c	\
	read-po.c	\
	read-po-lex.c	\
	read-po-gram.c	\
	plural-table.c	\
	format-c.c	\
	format-c++-brace.c	\
	format-python.c	\
	format-python-brace.c	\
	format-java.c	\
	format-java-printf.c	\
	format-csharp.c	\
	format-javascript.c	\
	format-scheme.c	\
	format-lisp.c	\
	format-elisp.c	\
	format-librep.c	\
	format-ruby.c	\
	format-sh.c	\
	format-awk.c	\
	format-lua.c	\
	format-pascal.c	\
	format-smalltalk.c	\
	format-qt.c	\
	format-qt-plural.c	\
	format-kde.c	\
	format-kde-kuit.c	\
	format-boost.c	\
	format-tcl.c	\
	format-perl.c	\
	format-perl-brace.c	\
	format-php.c	\
	format-gcc-internal.c	\
	format-gfc-internal.c	\
	format.c	\
	plural-exp.c	\
	plural-eval.c	\
	msgl-check.c	\
	sentence.c

MSGATTRIB_SOURCES = msgattrib.c
MSGCAT_SOURCES = msgcat.c

MSGCMP_SOURCES =	\
	msgcmp.c	\
	msgl-fsearch.c

MSGCOMM_SOURCES = msgcomm.c
MSGCONV_SOURCES = msgconv.c
MSGEN_SOURCES = msgen.c
MSGEXEC_SOURCES = msgexec.c

MSGFILTER_SOURCES =	\
	msgfilter.c	\
	filter-sr-latin.c	\
	filter-quote.c
	
MSGFMT_SOURCES =	\
	msgfmt.c	\
	write-mo.c	\
	write-csharp.c	\
	write-desktop.c	\
	write-java.c	\
	write-qt.c	\
	write-resources.c	\
	write-tcl.c	\
	write-xml.c	\
	..\gettext-runtime\intl\hash-string.c

MSGGREP_SOURCES = msggrep.c

MSGMERGE_SOURCES =	\
	msgmerge.c	\
	msgl-fsearch.c	\
	lang-table.c	\
	plural-count.c

MSGUNFMT_SOURCES =	\
	msgunfmt.c	\
	read-csharp.c	\
	read-java.c	\
	read-mo.c	\
	read-resources.c	\
	read-tcl.c	\
	..\gettext-runtime\intl\hash-string.c

MSGUNIQ_SOURCES = msguniq.c

RECODE_SR_LATIN_SOURCES =	\
	filter-sr-latin.c	\
	recode-sr-latin.c

XGETTEXT_SOURCES =	\
	..\gettext-tools\woe32dll\c++xgettext.cc	\
	xg-arglist-callshape.c	\
	xg-arglist-context.c	\
	xg-arglist-parser.c	\
	xg-encoding.c	\
	xg-pos.c	\
	xg-message.c	\
	xg-mixed-string.c	\
	x-awk.c	\
	x-c.c	\
	x-csharp.c	\
	x-desktop.c	\
	x-elisp.c	\
	x-java.c	\
	x-javascript.c	\
	x-librep.c	\
	x-lisp.c	\
	x-lua.c	\
	x-perl.c	\
	x-php.c	\
	x-po.c	\
	x-python.c	\
	x-rst.c	\
	x-ruby.c	\
	x-scheme.c	\
	x-sh.c	\
	x-smalltalk.c	\
	x-tcl.c	\
	x-vala.c	\
	x-ycp.c

MSGINIT_SOURCES =	\
	msginit.c	\
	lang-table.c	\
	plural-count.c	\
	..\gettext-runtime\intl\localealias.c

GETTEXT_TOOLS_TOOLS =	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgattrib.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgcat.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgcmp.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgcomm.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgconv.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgen.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgexec.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgfilter.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgfmt.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msggrep.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msginit.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgmerge.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msgunfmt.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\msguniq.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\recode-sr-latin.exe	\
	vs$(VSVER)\$(CFG)\$(PLAT)\xgettext.exe
