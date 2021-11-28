# sidequest-debian

A Containerfile and some Bash scripts to builld Debian
packages for [SideQuest](https://sidequestvr.com/)
on Debian Bullseye.

Packagers take too long to update things to their latest versions, so I
had to take the reins.

If you're just some poor sod looking for a recent release, check the
["Releases"](https://github.com/supersonichub1/sidequest-debain/releases)
tab on GitHub. If there's a version you want or I'm a bit behind,
bug me in an issue and I'll upload it.

If you want to run it yourself, read the Bash scripts—they're only a couple
lines long each—and the Containerfile. Yes, `run.bash` and `cp.bash` need to
be run at the same time; until someone can find a really easy way to copy something
from a Docker container without needing to run it, sue me.

If there's demand for me to support other Linux distros, I'll consider forking this
repository and building for all the platforms `electron-builder` supports.
