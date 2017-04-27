#!/bin/bash

docker rm -f jekyll

docker run -d \
  --label=jekyll \
  --volume=$(pwd):/srv/jekyll \
  --publish=80:4000 \
  --name=jekyll \
  jekyll/jekyll jekyll serve

docker logs -f jekyll
