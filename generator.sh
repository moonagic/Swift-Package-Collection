#!/bin/zsh -e
package-collection-generate packages.json temp_collection.json
jq . temp_collection.json > collection.json
rm temp_collection.json

