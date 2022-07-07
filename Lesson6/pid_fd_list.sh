#!/bin/bash
lsof -a -p $$ -d 0,1,2 | tr -s " " | cut -d " " -f 2,4 >> pid_fd_list.md

