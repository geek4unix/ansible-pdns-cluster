#!/bin/bash
for domain in $(cat md5_domains.txt)
do
 for ns in $(cat md5_ns.txt)
  do
    echo -n "domain: $domain ns: $ns md5_checksum: "
    dig AXFR @$ns $domain | grep -v "^;"|sort -u |md5
  done
done
