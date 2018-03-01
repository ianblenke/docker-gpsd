# docker-gpsd

This is a dockerized gpsd, with a silly workaround for specifying the `COMMAND` to run via a mechanism other than overriding the image `CMD`.

Long story short, specifying a command with `docker run` or `docker-compose` will cause gpsd to hang on start and not do anything at all.

By wrapping this in a braindead bash script that does nothing but exec a `$COMMAND` environment variable, we can still override the command at runtime.

