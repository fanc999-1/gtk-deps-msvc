# Notes for this Repository

This repository contains add-on files and patches to build the concerned packages
rather easily with NMake, which are meant to help to build dependencies for GTK/GNOME
and some other items like GraphViz, which are not normally that easy to build with
Visual Studio without additional tools and/or time-consuming configuration processes.

## How to use

* Install the desired Visual Studio version, and possibly Python 3.x as needed.
* Download the vanilla release of the package that you are intending to build, and
  unpack it somewhere.
* Clone the repository, and update as needed.
* Look for the package and then the package version that you are intending to build,
  indicated by their individual folders. It is strongly recommended, even required,
  that the version here matches the package's version, especially those that involve
  gnulib (e.g libiconv and gettext, at least).
* Copy the items in that folder as-is into the root sourcedir where you extracted the
  package.
* Apply any applicable patches that come along with things there.
* In your Visual Studio command prompt, cd into the folder that either says `win32`,
  `nmake` or `MSVC_NMake`.
* Run `nmake /f Makefile.vc CFG=[debug|release] <other_args>`, where `<other_args>` may
  optionally be used to point to locations of Python or location of headers and .lib's
  of dependent packages, or other options, and a build of the desired package will be
  carried out by NMake.

## Packages supported

* ICU4C: This is for release 58.x-mainly building with compilers that do not have `C++11/C++17`
  support, as 58.x ship with Visual Studio projects for later releases of Visual Studio, but is
  buildable with Visual Studio 2008 or later with a few minor patches that are supplied here. Later
  `C++11/C++17`-based releases can use ICU4C's project files directly, so these releases are not
  meant to be supported here.
* libffi: For building with Visual Studio 2008 or later, possibly with the patches here applied.
* libltdl: For building with Visual Studio 2008 or later, for use in building GraphViz.
* libiconv: For building with Visual Studio 2015 or later; for 1.19 and later, only Visual Studio
  2019 or later are actively tested.
* gettext: For building with Visual Studio 2015 or later; for 1.0 and later, only Visual Studio 2019
  or later are actively tested. This includes libintl, libasprintf, the gettext tools, libtextstyle
  and libgettextpo.

32-bit and 64-bit (x64 and ARM64) builds are supported as applicable.


