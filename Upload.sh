#!/bin/bash
# Bash script to upload website to appropriate aws bucket, ignoring git and DS_Store
# Mike Zabek
# 2017-07-27

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
DRYRUN_ARGS=()
if [[ "${1:-}" == "--dryrun" ]]; then
  DRYRUN_ARGS+=(--dryrun)
fi

aws s3 sync ./ s3://mikezabek.com --exclude "*.DS_Store" --exclude ".git*" --exclude "archive/*" --exclude "WorkInProgressDraft.md" --exclude "TODO.md" --exclude "Upload.sh" "${DRYRUN_ARGS[@]}"
