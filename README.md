# hsw.no infrastructure

This repository will contain most of services in use for `hsw.no`. The
goal is to run most services in configured containers, and as little
services as possible directly on the host. This will make a better
separation and easier for later transition to new servers.

Environment configuration and some data are stored in a non-public repository
named 'configuration'. On the server this is located in
`~henrste/configuration`.
