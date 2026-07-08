#!/usr/bin/python
#
# Utility script to generate .pc files for GLib
# for Visual Studio builds, to be used for
# building introspection files

# Author: Fan, Chun-wei
# Date: March 10, 2016

import os
import sys

from replace import replace_multi
from pc_base import BasePCItems

pkg_config_base_name = 'libffi'

def main(argv):
    base_pc = BasePCItems()

    base_pc.setup(argv)
    pkg_replace_items = {'@PACKAGE_NAME@': pkg_config_base_name,
                         '@PACKAGE_VERSION@':  base_pc.version,
                         '@toolexeclibdir@':  base_pc.libdir}

    pkg_replace_items.update(base_pc.base_replace_items)

    # Generate libffi.pc
    replace_multi(base_pc.top_srcdir + '/' + pkg_config_base_name + '.pc.in',
                  base_pc.srcdir + '/' + pkg_config_base_name + '.pc',
                  pkg_replace_items)

if __name__ == '__main__':
    sys.exit(main(sys.argv))
