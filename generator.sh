#!/bin/zsh -e
package-collection-generate packages.json temp_collection.json
jq . temp_collection.json > collection.json
rm temp_collection.json
./package-collection-sign collection.json temp_signed-collection.json key.pem swift_package.cer
jq . temp_signed-collection.json > signed-collection.json
rm temp_signed-collection.json
