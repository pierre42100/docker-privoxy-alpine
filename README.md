# privoxy-alpine

This repo is a fork from https://github.com/rdsubhas/docker-tor-privoxy-alpine, that just includes privoxy.

The smallest (**15 MB**) docker image with Privoxy on Alpine Linux.

```
docker run -d -p 8118:8118 -p 9050:9050 pierre42100/privoxy-alpine
curl --proxy localhost:8118 https://www.google.com
```

And that's it!

## Known Issues

* When running in interactive mode, pressing Ctrl+C doesn't cleanly exit. For now, run it in detached mode (`-d`). Calling `docker stop` cleanly exits though.
* We're using `testing` versions of tor and runit in Alpine. Got to keep an eye on future builds, until those packages reach `main` in Alpine.

## Other interesting projects

* [s6 supervision suite](http://skarnet.org/software/s6/index.html), similar to runit and daemontools
* [s6-overlay](https://github.com/just-containers/s6-overlay), base container with s6 and alpine
* [docker-slim](https://github.com/cloudimmunity/docker-slim), a tool to automatically analyze and trim existing fat containers
