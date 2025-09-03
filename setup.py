#!/usr/bin/env python3

import logging
import os
import subprocess
import sys

devpkgs = [
    "emacs",
    "go",
]

go_tools = ["github.com/fatih/gomodifytags@latest"]


def run(cmd: list[str], sudo: bool = False):
    if sudo and os.geteuid() != 0:
        logging.error("Must be run as root!")
        sys.exit(1)
    return subprocess.run(cmd, check=True, capture_output=True, text=True)
