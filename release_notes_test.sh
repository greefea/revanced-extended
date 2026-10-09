#!/usr/bin/env bash

set -euo pipefail

source utils.sh

empty_sha256=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
[ "$(release_note_asset 'Patches: MorpheApp/patches-test.mpp' /dev/null)" = \
	"Patches: MorpheApp/patches-test.mpp (sha256:$empty_sha256)" ]
! release_note_asset "YouTube: 1.2.3" missing.apk >/dev/null 2>&1
