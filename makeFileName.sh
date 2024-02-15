#!/bin/bash

read -p "Enter your text: " input
output="${input// /_}.md"

echo $output