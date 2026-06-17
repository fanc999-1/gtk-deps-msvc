LOCALCHARSET_SRC = ..\libcharset\lib\localcharset.c

LIBCHARSET_SRCS =	\
	$(LOCALCHARSET_SRC)	\
	..\libcharset\lib\relocatable-stub.c

LIBICONV_SRCS =	\
	$(LOCALCHARSET_SRC)	\
	..\lib\compat.c	\
	..\lib\iconv.c

LIBICONV_GNULIB_SRCS =	\
	..\srclib\allocator.c	\
	..\srclib\areadlink.c	\
	..\srclib\basename-lgpl.c	\
	..\srclib\binary-io.c	\
	..\srclib\canonicalize-lgpl.c	\
	..\srclib\careadlinkat.c	\
	..\srclib\cloexec.c	\
	..\srclib\close.c	\
	..\srclib\dup2.c	\
	..\srclib\error.c	\
	..\srclib\fcntl.c	\
	..\srclib\fd-hook.c	\
	..\srclib\free.c	\
	..\srclib\fseterr.c	\
	..\srclib\fstat.c	\
	..\srclib\getdtablesize.c	\
	..\srclib\getprogname.c	\
	..\srclib\glthread\lock.c	\
	..\srclib\glthread\once.c	\
	..\srclib\glthread\threadlib.c	\
	..\srclib\malloca.c	\
	..\srclib\malloc\scratch_buffer_grow.c	\
	..\srclib\malloc\scratch_buffer_grow_preserve.c	\
	..\srclib\malloc\scratch_buffer_set_array_size.c	\
	..\srclib\memeq.c	\
	..\srclib\mempcpy.c	\
	..\srclib\msvc-inval.c	\
	..\srclib\msvc-nothrow.c	\
	..\srclib\open.c	\
	..\srclib\progname.c	\
	..\srclib\progreloc.c	\
	..\srclib\pthread-once.c	\
	..\srclib\raise.c	\
	..\srclib\rawmemchr.c	\
	..\srclib\read.c	\
	..\srclib\readlink.c	\
	..\srclib\realloc.c	\
	..\srclib\relocatable.c	\
	..\srclib\safe-read.c	\
	..\srclib\sigprocmask.c	\
	..\srclib\stat-time.c	\
	..\srclib\stat-w32.c	\
	..\srclib\stat.c	\
	..\srclib\stdio-consolesafe.c	\
	..\srclib\stdio-write.c	\
	..\srclib\stdlib.c	\
	..\srclib\streq.c	\
	..\srclib\strerror-override.c	\
	..\srclib\strerror.c	\
	..\srclib\unistd.c	\
	..\srclib\uniwidth\width.c	\
	..\srclib\windows-mutex.c	\
	..\srclib\windows-once.c	\
	..\srclib\windows-recmutex.c	\
	..\srclib\windows-rwlock.c	\
	..\srclib\xmalloc.c	\
	..\srclib\xreadlink.c	\
	..\srclib\xstrdup.c

!if "$(PLAT)" == "Win32"
LIBICONV_GNULIB_SRCS = $(LIBICONV_GNULIB_SRCS) ..\srclib\malloc.c
!endif

!ifdef NO_GETTEXT
ICONV_SRCS = ..\src\iconv_no_i18n.c
!else
ICONV_SRCS = ..\src\iconv.c
!endif