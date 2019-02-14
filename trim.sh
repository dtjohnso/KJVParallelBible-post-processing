#!/bin/bash

# Remove tabs, carriage return, and line breaks via script
# Invoke this script with no  command-line parameters and it does the
# rest for you

# Input: Replace "template.txt" below to your preferred input file name 
# Output to "trimmed.json" 
tr -d "\t\r\n" <template.txt >trimmed.json