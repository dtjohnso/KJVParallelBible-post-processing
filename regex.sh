#!/bin/bash

# Backs up text files
# Replaces ** markup with contextually appropriate
# <span> tags for all files in the current directory

# create backup copy
DATE=$(date --iso-8601=minute)
mkdir backup_$DATE/
cp *-CT.txt backup_$DATE/
cp *-TR.txt backup_$DATE/

# Note showing find & replace regex extracted from inscrutable syntax of sed
# Find: \*\*([^*]*)\*\*
# Replace: \<span class=\\\"ctdifference\\\"\>\1\<\\\/span>

# find/replace on CT files
for f in *-CT.txt
do
	sed -i -E 's/\*\*([^*]*)\*\*/\<span class=\\\"ctdifference\\\"\>\1\<\\\/span>/g' "$f"
done

# find/replace on TR files
for g in *-TR.txt
do
	sed -i -E 's/\*\*([^*]*)\*\*/\<span class=\\\"trdifference\\\"\>\1\<\\\/span>/g' "$g"
done
