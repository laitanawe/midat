#!/usr/bin/env bash

# line by line urls to be downloaded are in the text file $url_list
#url_list="mouse_reference_urls.txt"
url_list=$1
echo "url_list: $url_list"

for u in `cat $url_list`; do echo "processing $u" && wget $u; done

## From the command line, it downloads each file in the URL list provided as the argument to this shell script
## ./wget.sh <path_to_url_list>
