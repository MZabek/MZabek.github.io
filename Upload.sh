#!/bin/bash
# Bash script to upload website to appropriate aws bucket, ignoring git and DS_Store
# Mike Zabek
# 2017-07-27

cd "/Users/zabek/Google Drive/website/UMichMirror"
aws s3 sync ./ s3://mikezabek.com --exclude "*.DS_Store" --exclude ".git*" --exclude "Upload.sh" --delete
