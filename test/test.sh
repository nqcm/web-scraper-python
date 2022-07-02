#!/bin/bash

set -euo pipefail

#python3 ../src/scraper/scrape.py https://webscraper.io/test-sites/e-commerce/allinone
curl -o trolley.png https://webscraper.io/images/test-sites/e-commerce/items/cart2.png

read -ra realsha <<< $(sha256sum trolley.png)
read -ra scrapesha <<< $(sha256sum twicon.png)

if [ "$realsha" == "$scrapesha" ]; then exit 0
else exit 1
fi
