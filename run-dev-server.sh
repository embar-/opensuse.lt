#/bin/sh
# Runs Hugo server, accessible at http://localhost (port 80)
docker run -p 127.0.0.1:80:1313 -u $(id -u):$(id -g) -v ${PWD}:/src hugomods/hugo:exts hugo server --bind 0.0.0.0
