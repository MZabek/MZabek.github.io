#!/bin/bash
# Bash script to upload website to appropriate aws bucket, ignoring git and DS_Store
# Mike Zabek
# 2017-07-27

cd "/Users/zabek/website/mikezabek"
aws s3 sync ./ s3://mikezabek.com --exclude "*.DS_Store" --exclude ".git*" --exclude "archive/*" --exclude "WorkInProgressDraft.md" --exclude "Upload.sh" --delete
