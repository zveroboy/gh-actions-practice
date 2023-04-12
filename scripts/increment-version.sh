#!/bin/bash

year=`date +%y`;
month=`date +%-m`;
version=`npm pkg get version | sed 's/"//g'`; #write package version to variable without quotes

IFS='.'; #setting space as delimiter
read -ra version_parts <<<"$version"; #split string

# if [[ "$year" != "${version_parts[0]}" ]]; then #compare year
#     npm --no-git-tag-version version major;
#     npm --no-git-tag-version version minor;
#     npm --no-git-tag-version version patch;
# elif [[ "$month" != "${version_parts[1]}" ]]; then #compare month
#     npm --no-git-tag-version version minor;
#     npm --no-git-tag-version version patch;
# else #increment patch
    npm --no-git-tag-version version patch;
# fi