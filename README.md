A Dockerfile for What's Fresh
=============================

I'm not a fan of chef. It's slow, difficult to debug, and awful for
turnaround developing environments. It's also broken right now.

Build the image
---------------

```shell
$ docker build -t="osuosl/whats_fresh:v1" .
```

Get a Shell on the VM
---------------------

```shell
$ docker run -t -i osuosl/whats_fresh:v1 /bin/bash
```

TODO
----

- [ ] Put the app under a supervisor/init system
- [ ] Have the app talk to a Postgres server container
- [ ] Get docker on the workstations (ticket submitted)
