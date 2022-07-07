#!/bin/bash
wc -l 0<usr_executables.md | head -11 usr_executables.md | cut -d / -f 4 >> cmd_names.md

