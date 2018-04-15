#!/bin/bash
rsync -a . ~ --exclude install.sh
