#!/bin/bash
rsync -a . ~ --exclude install.sh --exclude .git --exclude .gitignore
