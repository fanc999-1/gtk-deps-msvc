/* DO NOT EDIT! GENERATED AUTOMATICALLY! */
#if HAVE_WINSOCK2_H
# include <winsock2.h> /* avoid mingw pollution on DATADIR */
#endif

#ifdef _M_ARM64
# define ENCHANT_ARCH "arm64"
#elif defined (_M_X64) || defined (_M_AMD64)
# define ENCHANT_ARCH "x64"
#else
# define ENCHANT_ARCH "Win32"
#endif

#define PREFIX "c:/vs14.0/" ENCHANT_ARCH
#define EXEC_PREFIX PREFIX
#define BINDIR PREFIX "/bin"
#define SBINDIR PREFIX "/sbin"
#define LIBEXECDIR PREFIX "/libexec"
#define DATAROOTDIR PREFIX "/share"
#define DATADIR PREFIX "/share"
#define SYSCONFDIR PREFIX "/etc"
#define SHAREDSTATEDIR PREFIX "/com"
#define LOCALSTATEDIR PREFIX "/var"
#define RUNSTATEDIR PREFIX "/var/run"
#define INCLUDEDIR PREFIX "/include"
#define OLDINCLUDEDIR "/usr/include"
#define DOCDIR PREFIX "/share/doc/enchant"
#define INFODIR PREFIX "/share/info"
#define HTMLDIR PREFIX "/share/doc/enchant"
#define DVIDIR PREFIX "/share/doc/enchant"
#define PDFDIR PREFIX "/share/doc/enchant"
#define PSDIR PREFIX "/share/doc/enchant"
#define LIBDIR PREFIX "/lib"
#define LISPDIR PREFIX "/share/emacs/site-lisp"
#define LOCALEDIR PREFIX "/share/locale"
#define MANDIR PREFIX "/share/man"
#define PKGDATADIR PREFIX "/share/enchant"
#define PKGINCLUDEDIR PREFIX "/include/enchant"
#define PKGLIBDIR PREFIX "/lib/enchant"
#define PKGLIBEXECDIR PREFIX "/libexec/enchant"
