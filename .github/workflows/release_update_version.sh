#!/usr/bin/env sh
if [ -z "$1" ]
then
  echo "Please provide a version number"
  exit 1
fi

# $((\1+1)) increments the build number captured as \1.
# The /e flag allows using a Bash expression in the replacement.
sed --in-place \
    --regexp-extended \
    "s/version: .*\+([0-9]+)/echo \"version: $1+\$((\1+1))\"/ge" \
    pubspec.yaml