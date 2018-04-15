#!/bin/bash
rsync -av . ~ --exclude install.hs
