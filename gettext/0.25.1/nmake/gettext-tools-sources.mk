!if "$(PLAT)" == "Win32"
EXTRA_GNULIB_BASE_SRCS =	\
	..\gettext-tools\gnulib-lib\calloc.c	\
	..\gettext-tools\gnulib-lib\malloc.c
!endif

GETTEXT_LIB_BASE_FILES =	\
	..\gettext-tools\gnulib-lib\access.c	\
	..\gettext-tools\gnulib-lib\acl-errno-valid.c	\
	..\gettext-tools\gnulib-lib\acl-internal.c	\
	..\gettext-tools\gnulib-lib\addext.c	\
	..\gettext-tools\gnulib-lib\allocator.c	\
	..\gettext-tools\gnulib-lib\alphasort.c	\
	..\gettext-tools\gnulib-lib\areadlink.c	\
	..\gettext-tools\gnulib-lib\argmatch.c	\
	..\gettext-tools\gnulib-lib\arpa_inet.c	\
	..\gettext-tools\gnulib-lib\asnprintf.c	\
	..\gettext-tools\gnulib-lib\asprintf.c	\
	..\gettext-tools\gnulib-lib\asyncsafe-spin.c	\
	..\gettext-tools\gnulib-lib\aszprintf.c	\
	..\gettext-tools\gnulib-lib\backupfile.c	\
	..\gettext-tools\gnulib-lib\basename-lgpl.c	\
	..\gettext-tools\gnulib-lib\basename.c	\
	..\gettext-tools\gnulib-lib\bcp47.c	\
	..\gettext-tools\gnulib-lib\binary-io.c	\
	..\gettext-tools\gnulib-lib\bitrotate.c	\
	..\gettext-tools\gnulib-lib\btoc32.c	\
	..\gettext-tools\gnulib-lib\btowc.c	\
	..\gettext-tools\gnulib-lib\byteswap.c	\
	..\gettext-tools\gnulib-lib\c-ctype.c	\
	..\gettext-tools\gnulib-lib\c-strcasecmp.c	\
	..\gettext-tools\gnulib-lib\c-strcasestr.c	\
	..\gettext-tools\gnulib-lib\c-strncasecmp.c	\
	..\gettext-tools\gnulib-lib\c-strstr.c	\
	..\gettext-tools\gnulib-lib\c32isalnum.c	\
	..\gettext-tools\gnulib-lib\c32isalpha.c	\
	..\gettext-tools\gnulib-lib\c32isblank.c	\
	..\gettext-tools\gnulib-lib\c32iscntrl.c	\
	..\gettext-tools\gnulib-lib\c32isdigit.c	\
	..\gettext-tools\gnulib-lib\c32isgraph.c	\
	..\gettext-tools\gnulib-lib\c32islower.c	\
	..\gettext-tools\gnulib-lib\c32isprint.c	\
	..\gettext-tools\gnulib-lib\c32ispunct.c	\
	..\gettext-tools\gnulib-lib\c32isspace.c	\
	..\gettext-tools\gnulib-lib\c32isupper.c	\
	..\gettext-tools\gnulib-lib\c32isxdigit.c	\
	..\gettext-tools\gnulib-lib\c32tolower.c	\
	..\gettext-tools\gnulib-lib\c32width.c	\
	..\gettext-tools\gnulib-lib\c32_apply_type_test.c	\
	..\gettext-tools\gnulib-lib\c32_get_type_test.c	\
	..\gettext-tools\gnulib-lib\canonicalize-lgpl.c	\
	..\gettext-tools\gnulib-lib\canonicalize.c	\
	..\gettext-tools\gnulib-lib\careadlinkat.c	\
	..\gettext-tools\gnulib-lib\chdir-long.c	\
	..\gettext-tools\gnulib-lib\classpath.c	\
	..\gettext-tools\gnulib-lib\clean-temp-simple.c	\
	..\gettext-tools\gnulib-lib\clean-temp.c	\
	..\gettext-tools\gnulib-lib\cloexec.c	\
	..\gettext-tools\gnulib-lib\close.c	\
	..\gettext-tools\gnulib-lib\closedir.c	\
	..\gettext-tools\gnulib-lib\closeout.c	\
	..\gettext-tools\gnulib-lib\concat-filename.c	\
	..\gettext-tools\gnulib-lib\copy-file-range.c	\
	..\gettext-tools\gnulib-lib\copy-file.c	\
	..\gettext-tools\gnulib-lib\csharpcomp.c	\
	..\gettext-tools\gnulib-lib\csharpexec.c	\
	..\gettext-tools\gnulib-lib\cygpath.c	\
	..\gettext-tools\gnulib-lib\dirfd.c	\
	..\gettext-tools\gnulib-lib\dirname-lgpl.c	\
	..\gettext-tools\gnulib-lib\dirname.c	\
	..\gettext-tools\gnulib-lib\dup-safer-flag.c	\
	..\gettext-tools\gnulib-lib\dup-safer.c	\
	..\gettext-tools\gnulib-lib\dup.c	\
	..\gettext-tools\gnulib-lib\dup2.c	\
	..\gettext-tools\gnulib-lib\error-progname.c	\
	..\gettext-tools\gnulib-lib\error.c	\
	..\gettext-tools\gnulib-lib\execute.c	\
	..\gettext-tools\gnulib-lib\exitfail.c	\
	..\gettext-tools\gnulib-lib\fatal-signal.c	\
	..\gettext-tools\gnulib-lib\fchdir.c	\
	..\gettext-tools\gnulib-lib\fcntl.c	\
	..\gettext-tools\gnulib-lib\fd-hook.c	\
	..\gettext-tools\gnulib-lib\fd-safer-flag.c	\
	..\gettext-tools\gnulib-lib\fd-safer.c	\
	..\gettext-tools\gnulib-lib\fdopen.c	\
	..\gettext-tools\gnulib-lib\fdopendir.c	\
	..\gettext-tools\gnulib-lib\file-has-acl.c	\
	..\gettext-tools\gnulib-lib\file-set.c	\
	..\gettext-tools\gnulib-lib\filenamecat-lgpl.c	\
	..\gettext-tools\gnulib-lib\findprog-in.c	\
	..\gettext-tools\gnulib-lib\findprog.c	\
	..\gettext-tools\gnulib-lib\float.c	\
	..\gettext-tools\gnulib-lib\fnmatch.c	\
	..\gettext-tools\gnulib-lib\fopen.c	\
	..\gettext-tools\gnulib-lib\free.c	\
	..\gettext-tools\gnulib-lib\fstat.c	\
	..\gettext-tools\gnulib-lib\fstatat.c	\
	..\gettext-tools\gnulib-lib\fstrcmp.c	\
	..\gettext-tools\gnulib-lib\ftell.c	\
	..\gettext-tools\gnulib-lib\ftello.c	\
	..\gettext-tools\gnulib-lib\full-write.c	\
	..\gettext-tools\gnulib-lib\fwriteerror.c	\
	..\gettext-tools\gnulib-lib\gai_strerror.c	\
	..\gettext-tools\gnulib-lib\gcd.c	\
	..\gettext-tools\gnulib-lib\get-permissions.c	\
	..\gettext-tools\gnulib-lib\getaddrinfo.c	\
	..\gettext-tools\gnulib-lib\getcwd-lgpl.c	\
	..\gettext-tools\gnulib-lib\getcwd.c	\
	..\gettext-tools\gnulib-lib\getdelim.c	\
	..\gettext-tools\gnulib-lib\getdtablesize.c	\
	..\gettext-tools\gnulib-lib\getline.c	\
	..\gettext-tools\gnulib-lib\getlocalename_l-unsafe.c	\
	..\gettext-tools\gnulib-lib\getopt.c	\
	..\gettext-tools\gnulib-lib\getopt1.c	\
	..\gettext-tools\gnulib-lib\getprogname.c	\
	..\gettext-tools\gnulib-lib\getrandom.c	\
	..\gettext-tools\gnulib-lib\getrusage.c	\
	..\gettext-tools\gnulib-lib\gettime.c	\
	..\gettext-tools\gnulib-lib\gettimeofday.c	\
	..\gettext-tools\gnulib-lib\gl_carray_list.c	\
	..\gettext-tools\gnulib-lib\gl_hash_map.c	\
	..\gettext-tools\gnulib-lib\gl_hash_set.c	\
	..\gettext-tools\gnulib-lib\gl_linkedhash_list.c	\
	..\gettext-tools\gnulib-lib\gl_linked_list.c	\
	..\gettext-tools\gnulib-lib\gl_list.c	\
	..\gettext-tools\gnulib-lib\gl_map.c	\
	..\gettext-tools\gnulib-lib\gl_set.c	\
	..\gettext-tools\gnulib-lib\gl_xlist.c	\
	..\gettext-tools\gnulib-lib\gl_xmap.c	\
	..\gettext-tools\gnulib-lib\gl_xset.c	\
	..\gettext-tools\gnulib-lib\hard-locale.c	\
	..\gettext-tools\gnulib-lib\hash.c	\
	..\gettext-tools\gnulib-lib\hashcode-named-file.c	\
	..\gettext-tools\gnulib-lib\hashcode-string2.c	\
	..\gettext-tools\gnulib-lib\hashkey-string.c	\
	..\gettext-tools\gnulib-lib\ialloc.c	\
	..\gettext-tools\gnulib-lib\inet_ntop.c	\
	..\gettext-tools\gnulib-lib\inet_pton.c	\
	..\gettext-tools\gnulib-lib\isinf.c	\
	..\gettext-tools\gnulib-lib\isnand.c	\
	..\gettext-tools\gnulib-lib\isnanf.c	\
	..\gettext-tools\gnulib-lib\isnanl.c	\
	..\gettext-tools\gnulib-lib\iswctype.c	\
	..\gettext-tools\gnulib-lib\javacomp.c	\
	..\gettext-tools\gnulib-lib\javaexec.c	\
	..\gettext-tools\gnulib-lib\javaversion.c	\
	..\gettext-tools\gnulib-lib\localcharset.c	\
	..\gettext-tools\gnulib-lib\localename-environ.c	\
	..\gettext-tools\gnulib-lib\localename-table.c	\
	..\gettext-tools\gnulib-lib\localename-unsafe.c	\
	..\gettext-tools\gnulib-lib\localename.c	\
	..\gettext-tools\gnulib-lib\localtime.c	\
	..\gettext-tools\gnulib-lib\lseek.c	\
	..\gettext-tools\gnulib-lib\malloca.c	\
	..\gettext-tools\gnulib-lib\math.c	\
	..\gettext-tools\gnulib-lib\mbchar.c	\
	..\gettext-tools\gnulib-lib\mbiterf.c	\
	..\gettext-tools\gnulib-lib\mbrtoc32.c	\
	..\gettext-tools\gnulib-lib\mbrtowc.c	\
	..\gettext-tools\gnulib-lib\mbsinit.c	\
	..\gettext-tools\gnulib-lib\mbslen.c	\
	..\gettext-tools\gnulib-lib\mbsnlen.c	\
	..\gettext-tools\gnulib-lib\mbsrtoc32s-state.c	\
	..\gettext-tools\gnulib-lib\mbsrtoc32s.c	\
	..\gettext-tools\gnulib-lib\mbsstr.c	\
	..\gettext-tools\gnulib-lib\mbswidth.c	\
	..\gettext-tools\gnulib-lib\mbszero.c	\
	..\gettext-tools\gnulib-lib\mbuiter.c	\
	..\gettext-tools\gnulib-lib\mbuiterf.c	\
	..\gettext-tools\gnulib-lib\mem-hash-map.c	\
	..\gettext-tools\gnulib-lib\memmem.c	\
	..\gettext-tools\gnulib-lib\mempcpy.c	\
	..\gettext-tools\gnulib-lib\memrchr.c	\
	..\gettext-tools\gnulib-lib\memset_explicit.c	\
	..\gettext-tools\gnulib-lib\mkdir.c	\
	..\gettext-tools\gnulib-lib\mkdtemp.c	\
	..\gettext-tools\gnulib-lib\msvc-inval.c	\
	..\gettext-tools\gnulib-lib\msvc-nothrow.c	\
	..\gettext-tools\gnulib-lib\next-prime.c	\
	..\gettext-tools\gnulib-lib\obstack.c	\
	..\gettext-tools\gnulib-lib\omp-init.c	\
	..\gettext-tools\gnulib-lib\open.c	\
	..\gettext-tools\gnulib-lib\openat-die.c	\
	..\gettext-tools\gnulib-lib\openat-proc.c	\
	..\gettext-tools\gnulib-lib\openat.c	\
	..\gettext-tools\gnulib-lib\opendir.c	\
	..\gettext-tools\gnulib-lib\pipe-filter-aux.c	\
	..\gettext-tools\gnulib-lib\pipe-filter-ii.c	\
	..\gettext-tools\gnulib-lib\pipe-safer.c	\
	..\gettext-tools\gnulib-lib\pipe.c	\
	..\gettext-tools\gnulib-lib\pipe2-safer.c	\
	..\gettext-tools\gnulib-lib\pipe2.c	\
	..\gettext-tools\gnulib-lib\printf-args.c	\
	..\gettext-tools\gnulib-lib\printf-frexp.c	\
	..\gettext-tools\gnulib-lib\printf-frexpl.c	\
	..\gettext-tools\gnulib-lib\printf-parse.c	\
	..\gettext-tools\gnulib-lib\progname.c	\
	..\gettext-tools\gnulib-lib\progreloc.c	\
	..\gettext-tools\gnulib-lib\propername.c	\
	..\gettext-tools\gnulib-lib\pthread-once.c	\
	..\gettext-tools\gnulib-lib\qcopy-acl.c	\
	..\gettext-tools\gnulib-lib\quotearg.c	\
	..\gettext-tools\gnulib-lib\raise.c	\
	..\gettext-tools\gnulib-lib\rawmemchr.c	\
	..\gettext-tools\gnulib-lib\read-file.c	\
	..\gettext-tools\gnulib-lib\read.c	\
	..\gettext-tools\gnulib-lib\readdir.c	\
	..\gettext-tools\gnulib-lib\readlink.c	\
	..\gettext-tools\gnulib-lib\realloc.c	\
	..\gettext-tools\gnulib-lib\reallocarray.c	\
	..\gettext-tools\gnulib-lib\relocatable.c	\
	..\gettext-tools\gnulib-lib\rewinddir.c	\
	..\gettext-tools\gnulib-lib\rmdir.c	\
	..\gettext-tools\gnulib-lib\safe-read.c	\
	..\gettext-tools\gnulib-lib\safe-write.c	\
	..\gettext-tools\gnulib-lib\same-inode.c	\
	..\gettext-tools\gnulib-lib\save-cwd.c	\
	..\gettext-tools\gnulib-lib\scandir.c	\
	..\gettext-tools\gnulib-lib\secure_getenv.c	\
	..\gettext-tools\gnulib-lib\set-permissions.c	\
	..\gettext-tools\gnulib-lib\setenv.c	\
	..\gettext-tools\gnulib-lib\setlocale-fixes.c	\
	..\gettext-tools\gnulib-lib\setlocale.c	\
	..\gettext-tools\gnulib-lib\setlocale_null-unlocked.c	\
	..\gettext-tools\gnulib-lib\setlocale_null.c	\
	..\gettext-tools\gnulib-lib\sf-istream.c	\
	..\gettext-tools\gnulib-lib\sh-quote.c	\
	..\gettext-tools\gnulib-lib\sig-handler.c	\
	..\gettext-tools\gnulib-lib\sigaction.c	\
	..\gettext-tools\gnulib-lib\sigprocmask.c	\
	..\gettext-tools\gnulib-lib\snprintf.c	\
	..\gettext-tools\gnulib-lib\sockets.c	\
	..\gettext-tools\gnulib-lib\spawn-pipe.c	\
	..\gettext-tools\gnulib-lib\spawn.c	\
	..\gettext-tools\gnulib-lib\spawnattr_destroy.c	\
	..\gettext-tools\gnulib-lib\spawnattr_init.c	\
	..\gettext-tools\gnulib-lib\spawnattr_setflags.c	\
	..\gettext-tools\gnulib-lib\spawnattr_setpgroup.c	\
	..\gettext-tools\gnulib-lib\spawnattr_setsigmask.c	\
	..\gettext-tools\gnulib-lib\spawni.c	\
	..\gettext-tools\gnulib-lib\spawnp.c	\
	..\gettext-tools\gnulib-lib\spawn_faction_addchdir.c	\
	..\gettext-tools\gnulib-lib\spawn_faction_addclose.c	\
	..\gettext-tools\gnulib-lib\spawn_faction_adddup2.c	\
	..\gettext-tools\gnulib-lib\spawn_faction_addopen.c	\
	..\gettext-tools\gnulib-lib\spawn_faction_destroy.c	\
	..\gettext-tools\gnulib-lib\spawn_faction_init.c	\
	..\gettext-tools\gnulib-lib\stat-time.c	\
	..\gettext-tools\gnulib-lib\stat-w32.c	\
	..\gettext-tools\gnulib-lib\stat.c	\
	..\gettext-tools\gnulib-lib\stdio-write.c	\
	..\gettext-tools\gnulib-lib\stdlib.c	\
	..\gettext-tools\gnulib-lib\stpcpy.c	\
	..\gettext-tools\gnulib-lib\stpncpy.c	\
	..\gettext-tools\gnulib-lib\strchrnul.c	\
	..\gettext-tools\gnulib-lib\strerror-override.c	\
	..\gettext-tools\gnulib-lib\strerror.c	\
	..\gettext-tools\gnulib-lib\strerror_r.c	\
	..\gettext-tools\gnulib-lib\striconv.c	\
	..\gettext-tools\gnulib-lib\striconveh.c	\
	..\gettext-tools\gnulib-lib\striconveha.c	\
	..\gettext-tools\gnulib-lib\string-buffer-printf.c	\
	..\gettext-tools\gnulib-lib\string-buffer-reversed-printf.c	\
	..\gettext-tools\gnulib-lib\string-buffer-reversed.c	\
	..\gettext-tools\gnulib-lib\string-buffer.c	\
	..\gettext-tools\gnulib-lib\string-desc-contains.c	\
	..\gettext-tools\gnulib-lib\string-desc.c	\
	..\gettext-tools\gnulib-lib\stripslash.c	\
	..\gettext-tools\gnulib-lib\strnlen1.c	\
	..\gettext-tools\gnulib-lib\strstr.c	\
	..\gettext-tools\gnulib-lib\strtol.c	\
	..\gettext-tools\gnulib-lib\strtoul.c	\
	..\gettext-tools\gnulib-lib\str_startswith.c	\
	..\gettext-tools\gnulib-lib\supersede.c	\
	..\gettext-tools\gnulib-lib\sys_socket.c	\
	..\gettext-tools\gnulib-lib\tempname.c	\
	..\gettext-tools\gnulib-lib\timespec.c	\
	..\gettext-tools\gnulib-lib\tmpdir.c	\
	..\gettext-tools\gnulib-lib\trim.c	\
	..\gettext-tools\gnulib-lib\unistd.c	\
	..\gettext-tools\gnulib-lib\unlink.c	\
	..\gettext-tools\gnulib-lib\unsetenv.c	\
	..\gettext-tools\gnulib-lib\utime.c	\
	..\gettext-tools\gnulib-lib\utimens.c	\
	..\gettext-tools\gnulib-lib\vasnprintf.c	\
	..\gettext-tools\gnulib-lib\vasprintf.c	\
	..\gettext-tools\gnulib-lib\vaszprintf.c	\
	..\gettext-tools\gnulib-lib\vc-mtime.c	\
	..\gettext-tools\gnulib-lib\vsnprintf.c	\
	..\gettext-tools\gnulib-lib\vsnzprintf.c	\
	..\gettext-tools\gnulib-lib\wait-process.c	\
	..\gettext-tools\gnulib-lib\waitpid.c	\
	..\gettext-tools\gnulib-lib\wctype-h.c	\
	..\gettext-tools\gnulib-lib\wctype.c	\
	..\gettext-tools\gnulib-lib\wcwidth.c	\
	..\gettext-tools\gnulib-lib\windows-cygpath.c	\
	..\gettext-tools\gnulib-lib\windows-mutex.c	\
	..\gettext-tools\gnulib-lib\windows-once.c	\
	..\gettext-tools\gnulib-lib\windows-path.c	\
	..\gettext-tools\gnulib-lib\windows-recmutex.c	\
	..\gettext-tools\gnulib-lib\windows-rwlock.c	\
	..\gettext-tools\gnulib-lib\windows-spawn.c	\
	..\gettext-tools\gnulib-lib\windows-spin.c	\
	..\gettext-tools\gnulib-lib\windows-tls.c	\
	..\gettext-tools\gnulib-lib\wmempcpy.c	\
	..\gettext-tools\gnulib-lib\write.c	\
	..\gettext-tools\gnulib-lib\xalloc-die.c	\
	..\gettext-tools\gnulib-lib\xasprintf.c	\
	..\gettext-tools\gnulib-lib\xconcat-filename.c	\
	..\gettext-tools\gnulib-lib\xerror.c	\
	..\gettext-tools\gnulib-lib\xgetcwd.c	\
	..\gettext-tools\gnulib-lib\xmalloc.c	\
	..\gettext-tools\gnulib-lib\xmalloca.c	\
	..\gettext-tools\gnulib-lib\xmemdup0.c	\
	..\gettext-tools\gnulib-lib\xreadlink.c	\
	..\gettext-tools\gnulib-lib\xsetenv.c	\
	..\gettext-tools\gnulib-lib\xsize.c	\
	..\gettext-tools\gnulib-lib\xstrerror.c	\
	..\gettext-tools\gnulib-lib\xstriconv.c	\
	..\gettext-tools\gnulib-lib\xstriconveh.c	\
	..\gettext-tools\gnulib-lib\xstring-buffer-printf.c	\
	..\gettext-tools\gnulib-lib\xstring-buffer-reversed-printf.c	\
	..\gettext-tools\gnulib-lib\xstring-buffer-reversed.c	\
	..\gettext-tools\gnulib-lib\xstring-buffer.c	\
	..\gettext-tools\gnulib-lib\xstring-desc.c	\
	..\gettext-tools\gnulib-lib\xstrtol.c	\
	..\gettext-tools\gnulib-lib\xstrtoul.c	\
	..\gettext-tools\gnulib-lib\xvasprintf.c	\
	$(EXTRA_GNULIB_BASE_SRCS)

GNULIB_SRC_BASENAMES = $(GETTEXT_LIB_BASE_FILES:..\gettext-tools\gnulib-lib\=)

!if "$(PLAT)" == "Win32"
EXTRA_LIBGREP_GNULIB_SRCS =	\
	..\gettext-tools\libgrep\gnulib-lib\malloc.c
!endif

LIBGREP_GNULIB_BASE_SOURCES =	\
	..\gettext-tools\libgrep\gnulib-lib\btowc.c	\
	..\gettext-tools\libgrep\gnulib-lib\iswctype.c	\
	..\gettext-tools\libgrep\gnulib-lib\mbrlen.c	\
	..\gettext-tools\libgrep\gnulib-lib\mbszero.c	\
	..\gettext-tools\libgrep\gnulib-lib\nl_langinfo.c	\
	..\gettext-tools\libgrep\gnulib-lib\pthread-once.c	\
	..\gettext-tools\libgrep\gnulib-lib\regex.c	\
	..\gettext-tools\libgrep\gnulib-lib\stdlib.c	\
	..\gettext-tools\libgrep\gnulib-lib\unistd.c	\
	..\gettext-tools\libgrep\gnulib-lib\wcrtomb.c	\
	..\gettext-tools\libgrep\gnulib-lib\wctype-h.c	\
	..\gettext-tools\libgrep\gnulib-lib\wctype.c	\
	$(EXTRA_LIBGREP_GNULIB_SRCS)

LIBGREP_SOURCES =	\
	..\gettext-tools\libgrep\kwset.c	\
	..\gettext-tools\libgrep\m-fgrep.c	\
	..\gettext-tools\libgrep\m-regex.c

LIBGETTEXTPO_GNULIB_SRCS =	\
	..\gettext-tools\libgettextpo\asnprintf.c	\
	..\gettext-tools\libgettextpo\asprintf.c	\
	..\gettext-tools\libgettextpo\aszprintf.c	\
	..\gettext-tools\libgettextpo\basename-lgpl.c	\
	..\gettext-tools\libgettextpo\c-ctype.c	\
	..\gettext-tools\libgettextpo\c-strcasecmp.c	\
	..\gettext-tools\libgettextpo\c-strncasecmp.c	\
	..\gettext-tools\libgettextpo\c-strstr.c	\
	..\gettext-tools\libgettextpo\c32isalnum.c	\
	..\gettext-tools\libgettextpo\c32isalpha.c	\
	..\gettext-tools\libgettextpo\c32isblank.c	\
	..\gettext-tools\libgettextpo\c32iscntrl.c	\
	..\gettext-tools\libgettextpo\c32isdigit.c	\
	..\gettext-tools\libgettextpo\c32isgraph.c	\
	..\gettext-tools\libgettextpo\c32islower.c	\
	..\gettext-tools\libgettextpo\c32isprint.c	\
	..\gettext-tools\libgettextpo\c32ispunct.c	\
	..\gettext-tools\libgettextpo\c32isspace.c	\
	..\gettext-tools\libgettextpo\c32isupper.c	\
	..\gettext-tools\libgettextpo\c32isxdigit.c	\
	..\gettext-tools\libgettextpo\c32tolower.c	\
	..\gettext-tools\libgettextpo\c32width.c	\
	..\gettext-tools\libgettextpo\cloexec.c	\
	..\gettext-tools\libgettextpo\close.c	\
	..\gettext-tools\libgettextpo\concat-filename.c	\
	..\gettext-tools\libgettextpo\dup2.c	\
	..\gettext-tools\libgettextpo\error.c	\
	..\gettext-tools\libgettextpo\exitfail.c	\
	..\gettext-tools\libgettextpo\fcntl.c	\
	..\gettext-tools\libgettextpo\fd-hook.c	\
	..\gettext-tools\libgettextpo\fdopen.c	\
	..\gettext-tools\libgettextpo\float.c	\
	..\gettext-tools\libgettextpo\fopen.c	\
	..\gettext-tools\libgettextpo\free.c	\
	..\gettext-tools\libgettextpo\fstat.c	\
	..\gettext-tools\libgettextpo\fstrcmp.c	\
	..\gettext-tools\libgettextpo\fsync.c	\
	..\gettext-tools\libgettextpo\full-write.c	\
	..\gettext-tools\libgettextpo\fwriteerror.c	\
	..\gettext-tools\libgettextpo\gcd.c	\
	..\gettext-tools\libgettextpo\getdelim.c	\
	..\gettext-tools\libgettextpo\getdtablesize.c	\
	..\gettext-tools\libgettextpo\getline.c	\
	..\gettext-tools\libgettextpo\getprogname.c	\
	..\gettext-tools\libgettextpo\gl_linked_list.c	\
	..\gettext-tools\libgettextpo\gl_list.c	\
	..\gettext-tools\libgettextpo\gl_xlist.c	\
	..\gettext-tools\libgettextpo\hard-locale.c	\
	..\gettext-tools\libgettextpo\ialloc.c	\
	..\gettext-tools\libgettextpo\isnanf.c	\
	..\gettext-tools\libgettextpo\isnanl.c	\
	..\gettext-tools\libgettextpo\localcharset.c	\
	..\gettext-tools\libgettextpo\malloca.c	\
	..\gettext-tools\libgettextpo\markup.c	\
	..\gettext-tools\libgettextpo\math.c	\
	..\gettext-tools\libgettextpo\mbchar.c	\
	..\gettext-tools\libgettextpo\mbiterf.c	\
	..\gettext-tools\libgettextpo\mbrtoc32.c	\
	..\gettext-tools\libgettextpo\mbrtowc.c	\
	..\gettext-tools\libgettextpo\mbsinit.c	\
	..\gettext-tools\libgettextpo\mbsnlen.c	\
	..\gettext-tools\libgettextpo\mbszero.c	\
	..\gettext-tools\libgettextpo\mem-hash-map.c	\
	..\gettext-tools\libgettextpo\memmem.c	\
	..\gettext-tools\libgettextpo\memrchr.c	\
	..\gettext-tools\libgettextpo\msvc-inval.c	\
	..\gettext-tools\libgettextpo\msvc-nothrow.c	\
	..\gettext-tools\libgettextpo\next-prime.c	\
	..\gettext-tools\libgettextpo\obstack.c	\
	..\gettext-tools\libgettextpo\open.c	\
	..\gettext-tools\libgettextpo\printf-args.c	\
	..\gettext-tools\libgettextpo\printf-frexp.c	\
	..\gettext-tools\libgettextpo\printf-frexpl.c	\
	..\gettext-tools\libgettextpo\printf-parse.c	\
	..\gettext-tools\libgettextpo\pthread-once.c	\
	..\gettext-tools\libgettextpo\raise.c	\
	..\gettext-tools\libgettextpo\rawmemchr.c	\
	..\gettext-tools\libgettextpo\realloc.c	\
	..\gettext-tools\libgettextpo\reallocarray.c	\
	..\gettext-tools\libgettextpo\relocatable.c	\
	..\gettext-tools\libgettextpo\safe-write.c	\
	..\gettext-tools\libgettextpo\setlocale_null-unlocked.c	\
	..\gettext-tools\libgettextpo\setlocale_null.c	\
	..\gettext-tools\libgettextpo\sigprocmask.c	\
	..\gettext-tools\libgettextpo\stat-time.c	\
	..\gettext-tools\libgettextpo\stat-w32.c	\
	..\gettext-tools\libgettextpo\stat.c	\
	..\gettext-tools\libgettextpo\stdio-write.c	\
	..\gettext-tools\libgettextpo\stdlib.c	\
	..\gettext-tools\libgettextpo\stpcpy.c	\
	..\gettext-tools\libgettextpo\stpncpy.c	\
	..\gettext-tools\libgettextpo\strchrnul.c	\
	..\gettext-tools\libgettextpo\strerror-override.c	\
	..\gettext-tools\libgettextpo\strerror.c	\
	..\gettext-tools\libgettextpo\strerror_r.c	\
	..\gettext-tools\libgettextpo\striconv.c	\
	..\gettext-tools\libgettextpo\striconveh.c	\
	..\gettext-tools\libgettextpo\striconveha.c	\
	..\gettext-tools\libgettextpo\string-desc-contains.c	\
	..\gettext-tools\libgettextpo\string-desc.c	\
	..\gettext-tools\libgettextpo\strstr.c	\
	..\gettext-tools\libgettextpo\str_startswith.c	\
	..\gettext-tools\libgettextpo\unistd.c	\
	..\gettext-tools\libgettextpo\vasnprintf.c	\
	..\gettext-tools\libgettextpo\vasprintf.c	\
	..\gettext-tools\libgettextpo\vaszprintf.c	\
	..\gettext-tools\libgettextpo\wctype-h.c	\
	..\gettext-tools\libgettextpo\wcwidth.c	\
	..\gettext-tools\libgettextpo\windows-mutex.c	\
	..\gettext-tools\libgettextpo\windows-once.c	\
	..\gettext-tools\libgettextpo\windows-recmutex.c	\
	..\gettext-tools\libgettextpo\windows-rwlock.c	\
	..\gettext-tools\libgettextpo\windows-tls.c	\
	..\gettext-tools\libgettextpo\write.c	\
	..\gettext-tools\libgettextpo\xalloc-die.c	\
	..\gettext-tools\libgettextpo\xasprintf.c	\
	..\gettext-tools\libgettextpo\xconcat-filename.c	\
	..\gettext-tools\libgettextpo\xmalloc.c	\
	..\gettext-tools\libgettextpo\xmalloca.c	\
	..\gettext-tools\libgettextpo\xsize.c	\
	..\gettext-tools\libgettextpo\xstrerror.c	\
	..\gettext-tools\libgettextpo\xstriconv.c	\
	..\gettext-tools\libgettextpo\xvasprintf.c	\
	$(EXTRA_GNULIB_BASE_SRCS:..\gettext-tools\gnulib-lib\=..\gettext-tools\libgettextpo)

LIBGETTEXTPO_GNULIB_SRC_BASENAMES = $(LIBGETTEXTPO_GNULIB_SRCS:..\gettext-tools\libgettextpo\=)	

FORMAT_SOURCES =	\
	..\gettext-tools\src\format-awk.c	\
	..\gettext-tools\src\format-boost.c	\
	..\gettext-tools\src\format-c++-brace.c	\
	..\gettext-tools\src\format-c.c	\
	..\gettext-tools\src\format-csharp.c	\
	..\gettext-tools\src\format-d.c	\
	..\gettext-tools\src\format-elisp.c	\
	..\gettext-tools\src\format-gcc-internal.c	\
	..\gettext-tools\src\format-gfc-internal.c	\
	..\gettext-tools\src\format-go.c	\
	..\gettext-tools\src\format-java-printf.c	\
	..\gettext-tools\src\format-java.c	\
	..\gettext-tools\src\format-javascript.c	\
	..\gettext-tools\src\format-kde-kuit.c	\
	..\gettext-tools\src\format-kde.c	\
	..\gettext-tools\src\format-librep.c	\
	..\gettext-tools\src\format-lisp.c	\
	..\gettext-tools\src\format-lua.c	\
	..\gettext-tools\src\format-modula2.c	\
	..\gettext-tools\src\format-pascal.c	\
	..\gettext-tools\src\format-perl-brace.c	\
	..\gettext-tools\src\format-perl.c	\
	..\gettext-tools\src\format-php.c	\
	..\gettext-tools\src\format-python-brace.c	\
	..\gettext-tools\src\format-python.c	\
	..\gettext-tools\src\format-qt-plural.c	\
	..\gettext-tools\src\format-qt.c	\
	..\gettext-tools\src\format-ruby.c	\
	..\gettext-tools\src\format-rust.c	\
	..\gettext-tools\src\format-scheme.c	\
	..\gettext-tools\src\format-sh.c	\
	..\gettext-tools\src\format-smalltalk.c	\
	..\gettext-tools\src\format-tcl.c	\
	..\gettext-tools\woe32dll\c++format.cc

COMMON_SRCS =	\
	..\gettext-tools\src\message.c	\
	..\gettext-tools\src\pos.c	\
	..\gettext-tools\src\po-error.c	\
	..\gettext-tools\src\read-catalog-abstract.c	\
	..\gettext-tools\src\po-charset.c	\
	..\gettext-tools\src\read-po.c	\
	..\gettext-tools\src\read-po-gram.c	\
	..\gettext-tools\src\read-po-lex.c	\
	..\gettext-tools\src\read-properties.c	\
	..\gettext-tools\src\read-stringtable.c	\
	..\gettext-tools\src\open-catalog.c	\
	..\gettext-tools\src\dir-list.c	\
	..\gettext-tools\src\str-list.c
  
LIBGETTEXTSRC_SRCS =	\
	$(COMMON_SRCS)	\
	$(FORMAT_SOURCES)	\
	..\gettext-tools\src\file-list.c	\
	..\gettext-tools\src\its.c	\
	..\gettext-tools\src\locating-rules.c	\
	..\gettext-tools\src\msgl-ascii.c	\
	..\gettext-tools\src\msgl-cat.c	\
	..\gettext-tools\src\msgl-charset.c	\
	..\gettext-tools\src\msgl-check.c	\
	..\gettext-tools\src\msgl-english.c	\
	..\gettext-tools\src\msgl-equal.c	\
	..\gettext-tools\src\msgl-header.c	\
	..\gettext-tools\src\msgl-iconv.c	\
	..\gettext-tools\src\msgl-ofn.c	\
	..\gettext-tools\src\plural-eval.c	\
	..\gettext-tools\src\plural-exp.c	\
	..\gettext-tools\src\plural-table.c	\
	..\gettext-tools\src\po-time.c	\
	..\gettext-tools\src\read-catalog-file.c	\
	..\gettext-tools\src\read-catalog-special.c	\
	..\gettext-tools\src\read-catalog.c	\
	..\gettext-tools\src\read-desktop.c	\
	..\gettext-tools\src\search-path.c	\
	..\gettext-tools\src\sentence.c	\
	..\gettext-tools\src\write-catalog.c	\
	..\gettext-tools\src\write-po.c	\
	..\gettext-tools\src\write-properties.c	\
	..\gettext-tools\src\write-stringtable.c	\
	..\gettext-tools\woe32dll\c++xerror-handler.cc

LIBGETTEXTPO_AUX_SRCS =	\
	..\gettext-tools\src\str-list.c \
	..\gettext-tools\src\message.c \
	..\gettext-tools\src\pos.c \
	..\gettext-tools\src\msgl-ascii.c \
	..\gettext-tools\src\write-catalog.c \
	..\gettext-tools\src\write-po.c \
	..\gettext-tools\src\po-charset.c \
	..\gettext-tools\src\read-catalog-special.c \
	..\gettext-tools\src\read-catalog-abstract.c \
	..\gettext-tools\src\read-catalog.c \
	..\gettext-tools\src\read-po.c \
	..\gettext-tools\src\read-po-lex.c \
	..\gettext-tools\src\read-po-gram.c \
	..\gettext-tools\src\plural-table.c \
	..\gettext-tools\src\format-c.c \
	..\gettext-tools\src\format-c++-brace.c \
	..\gettext-tools\src\format-python.c \
	..\gettext-tools\src\format-python-brace.c \
	..\gettext-tools\src\format-java.c \
	..\gettext-tools\src\format-java-printf.c \
	..\gettext-tools\src\format-csharp.c \
	..\gettext-tools\src\format-javascript.c \
	..\gettext-tools\src\format-scheme.c \
	..\gettext-tools\src\format-lisp.c \
	..\gettext-tools\src\format-elisp.c \
	..\gettext-tools\src\format-librep.c \
	..\gettext-tools\src\format-rust.c \
	..\gettext-tools\src\format-go.c \
	..\gettext-tools\src\format-ruby.c \
	..\gettext-tools\src\format-sh.c \
	..\gettext-tools\src\format-awk.c \
	..\gettext-tools\src\format-lua.c \
	..\gettext-tools\src\format-pascal.c \
	..\gettext-tools\src\format-modula2.c \
	..\gettext-tools\src\format-d.c \
	..\gettext-tools\src\format-smalltalk.c \
	..\gettext-tools\src\format-qt.c \
	..\gettext-tools\src\format-qt-plural.c \
	..\gettext-tools\src\format-kde.c \
	..\gettext-tools\src\format-kde-kuit.c \
	..\gettext-tools\src\format-boost.c \
	..\gettext-tools\src\format-tcl.c \
	..\gettext-tools\src\format-perl.c \
	..\gettext-tools\src\format-perl-brace.c \
	..\gettext-tools\src\format-php.c \
	..\gettext-tools\src\format-gcc-internal.c \
	..\gettext-tools\src\format-gfc-internal.c \
	..\gettext-tools\src\format.c \
	..\gettext-tools\src\plural-exp.c \
	..\gettext-tools\src\plural-eval.c \
	..\gettext-tools\src\msgl-check.c \
	..\gettext-tools\src\sentence.c

MSGATTRIB_SOURCES = ..\gettext-tools\src\msgattrib.c
MSGCAT_SOURCES = ..\gettext-tools\src\msgcat.c

MSGCMP_SOURCES =	\
	..\gettext-tools\src\msgcmp.c	\
	..\gettext-tools\src\msgl-fsearch.c

MSGCOMM_SOURCES = ..\gettext-tools\src\msgcomm.c
MSGCONV_SOURCES = ..\gettext-tools\src\msgconv.c
MSGEN_SOURCES = ..\gettext-tools\src\msgen.c
MSGEXEC_SOURCES = ..\gettext-tools\src\msgexec.c

MSGFILTER_SOURCES =	\
	..\gettext-tools\src\msgfilter.c	\
	..\gettext-tools\src\filter-sr-latin.c	\
	..\gettext-tools\src\filter-quote.c
	
MSGFMT_SOURCES =	\
	..\gettext-tools\src\msgfmt.c	\
	..\gettext-tools\src\write-csharp.c	\
	..\gettext-tools\src\write-desktop.c	\
	..\gettext-tools\src\write-java.c	\
	..\gettext-tools\src\write-mo.c	\
	..\gettext-tools\src\write-qt.c	\
	..\gettext-tools\src\write-resources.c	\
	..\gettext-tools\src\write-tcl.c	\
	..\gettext-tools\src\write-xml.c	\
	..\gettext-runtime\intl\hash-string.c

MSGGREP_SOURCES = ..\gettext-tools\src\msggrep.c

MSGMERGE_SOURCES =	\
	..\gettext-tools\src\msgmerge.c	\
	..\gettext-tools\src\msgl-fsearch.c	\
	..\gettext-tools\src\lang-table.c	\
	..\gettext-tools\src\plural-count.c

MSGUNFMT_SOURCES =	\
	..\gettext-tools\src\msgunfmt.c	\
	..\gettext-tools\src\read-csharp.c	\
	..\gettext-tools\src\read-java.c	\
	..\gettext-tools\src\read-mo.c	\
	..\gettext-tools\src\read-resources.c	\
	..\gettext-tools\src\read-tcl.c	\
	..\gettext-runtime\intl\hash-string.c

MSGUNIQ_SOURCES = ..\gettext-tools\src\msguniq.c

RECODE_SR_LATIN_SOURCES =	\
	..\gettext-tools\src\filter-sr-latin.c	\
	..\gettext-tools\src\recode-sr-latin.c

XGETTEXT_SOURCES =	\
	..\gettext-tools\woe32dll\c++xgettext.cc	\
	..\gettext-tools\src\if-error.c	\
	..\gettext-tools\src\xg-arglist-callshape.c	\
	..\gettext-tools\src\xg-arglist-context.c	\
	..\gettext-tools\src\xg-arglist-parser.c	\
	..\gettext-tools\src\xg-check.c	\
	..\gettext-tools\src\xg-encoding.c	\
	..\gettext-tools\src\xg-formatstring.c	\
	..\gettext-tools\src\xg-message.c	\
	..\gettext-tools\src\xg-mixed-string.c	\
	..\gettext-tools\src\xg-pos.c	\
	..\gettext-tools\src\x-awk.c	\
	..\gettext-tools\src\x-c.c	\
	..\gettext-tools\src\x-csharp.c	\
	..\gettext-tools\src\x-d.c	\
	..\gettext-tools\src\x-desktop.c	\
	..\gettext-tools\src\x-elisp.c	\
	..\gettext-tools\src\x-java.c	\
	..\gettext-tools\src\x-javascript.c	\
	..\gettext-tools\src\x-librep.c	\
	..\gettext-tools\src\x-lisp.c	\
	..\gettext-tools\src\x-lua.c	\
	..\gettext-tools\src\x-modula2.c	\
	..\gettext-tools\src\x-go.c	\
	..\gettext-tools\src\x-perl.c	\
	..\gettext-tools\src\x-php.c	\
	..\gettext-tools\src\x-po.c	\
	..\gettext-tools\src\x-python.c	\
	..\gettext-tools\src\x-rst.c	\
	..\gettext-tools\src\x-ruby.c	\
	..\gettext-tools\src\x-rust.c	\
	..\gettext-tools\src\x-scheme.c	\
	..\gettext-tools\src\x-sh.c	\
	..\gettext-tools\src\x-smalltalk.c	\
	..\gettext-tools\src\x-tcl.c	\
	..\gettext-tools\src\x-typescript.c	\
	..\gettext-tools\src\x-typescriptx.c	\
	..\gettext-tools\src\x-vala.c	\
	..\gettext-tools\src\x-ycp.c

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
