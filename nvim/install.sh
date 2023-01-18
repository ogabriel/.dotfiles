#!/bin/sh

set -e

cd /tmp

wget -O /tmp/ https://objects.githubusercontent.com/github-production-release-asset-2e65be/16408992/f56502a5-5f81-4443-b23f-d849e581b19c?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230118T104738Z&X-Amz-Expires=300&X-Amz-Signature=c313178bd92085fd69951870c3234e70dc5ec1dc19ce6126ecdfe8b48cadab5e&X-Amz-SignedHeaders=host&actor_id=22120217&key_id=0&repo_id=16408992&response-content-disposition=attachment%3B%20filename%3Dnvim-linux64.deb&response-content-type=application%2Foctet-stream

wget -O /tmp/ https://objects.githubusercontent.com/github-production-release-asset-2e65be/16408992/a1328f86-90d3-4a5a-ab72-2b21ca92b473?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230118T104752Z&X-Amz-Expires=300&X-Amz-Signature=f95cc5cb420ee76b781368e115329658e8a94bf603425ca3492358a2cbd495e0&X-Amz-SignedHeaders=host&actor_id=22120217&key_id=0&repo_id=16408992&response-content-disposition=attachment%3B%20filename%3Dnvim-linux64.deb.sha256sum&response-content-type=application%2Foctet-stream

sha256sum /tmp/nvim-linux64.deb > /tmp/checksum
sha256sum -c /tmp/checksum

sudo dpkg -i nvim-linux64.deb
