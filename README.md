# squirr-fetch

squirrfetch, a blazingly fast and minimal fetch program written in pure Squirrel

## Dependencies

- [Squirrel 3](https://www.squirrel-lang.org/) (`squirrel3`) — required to run `squirr-fetch.nut`
- `sudo` or `doas` — required by the installer when writing to `/usr/bin` (not needed if run as root or if the destination is already writable)
- A POSIX shell (`sh`) and coreutils `install` — required by `install.sh`

## Install

```sh
chmod +x install.sh
sudo ./install.sh
```

This copies `squirr-fetch.nut` to `/usr/bin/squirrfetch` and makes it executable.

## Usage

```sh
squirrfetch
```
