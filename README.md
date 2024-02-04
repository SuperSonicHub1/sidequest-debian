# sidequest-debian

A Containerfile and some Bash scripts to builld Debian
packages for [SideQuest](https://sidequestvr.com/)
on Debian Bullseye.

Packagers take too long to update things to their latest versions, so I
had to take the reins.

If you're looking for a recent release, check the
["Releases"](https://github.com/supersonichub1/sidequest-debain/releases)
tab on GitHub. If there's a version you want or I'm a bit behind,
bug me in an issue and I'll upload it.

If there's demand for me to support other Linux distros, I'll consider forking this
repository and building for all the platforms `electron-builder` supports.

## Use
```bash
./build
./cp-artifacts
```
