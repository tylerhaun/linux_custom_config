#!/bin/bash
rsync -a . ~ --exclude install.hs
