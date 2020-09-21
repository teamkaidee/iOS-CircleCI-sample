#!/bin/bash
#
# Run SwiftLint
# Inspired from https://gist.github.com/PH9/52e2e43b93dc2d860b569ccf31f49c6e

START_DATE=$(date +"%s")

SWIFT_FORMAT=${PWD}/Pods/SwiftFormat/CommandLineTool/swiftformat
SWIFT_LINT=${PWD}/Pods/SwiftLint/swiftlint

count=0

# Changes files
for file_path in $(git diff --diff-filter=d --name-only | grep ".swift$"); do
    ${SWIFT_FORMAT} "$file_path"
    export SCRIPT_INPUT_FILE_$count="$file_path"
    count=$((count + 1))
done

# Stages files
for file_path in $(git diff --diff-filter=d --name-only --cached | grep ".swift$"); do
    ${SWIFT_FORMAT} "$file_path"
    export SCRIPT_INPUT_FILE_$count="$file_path"
    count=$((count + 1))
done

# New files
for file_path in $(git ls-files --others --exclude-standard | grep ".swift$"); do
    $SWIFT_FORMAT "$file_path"
    export SCRIPT_INPUT_FILE_$count="$file_path"
    count=$((count + 1))
done

if [ "$count" -ne 0 ]; then
    echo "[I] Found $((count)) files, liting..."
    export SCRIPT_INPUT_FILE_COUNT=$count
    $SWIFT_LINT autocorrect --use-script-input-files --force-exclude
    $SWIFT_LINT lint --use-script-input-files --force-exclude
fi

END_DATE=$(date +"%s")

DIFF=$((END_DATE - START_DATE))
echo "[!] SwiftLint took $((DIFF / 60)) minutes and $((DIFF % 60)) seconds to complete."
