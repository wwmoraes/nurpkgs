# nurpkgs

> Nix User Repository packages

[![GitHub Issues](https://img.shields.io/github/issues/wwmoraes/nurpkgs.svg)](https://github.com/wwmoraes/nurpkgs/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/wwmoraes/nurpkgs.svg)](https://github.com/wwmoraes/nurpkgs/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

---

## 📝 Table of Contents

- [About](#-about)
- [Getting Started](#-getting-started)
- [Usage](#-usage)
- [Built Using](#-built-using)
- [TODO](./TODO.md)
- [Contributing](./CONTRIBUTING.md)
- [Authors](#-authors)
- [Acknowledgments](#-acknowledgements)

## 🧐 About

Nix packages that aren't popular enough to be in the main nixpkgs repository.
They also deserve some love ❤️

## 🏁 Getting Started

Clone this repository then use `nix-shell --command 'task build'` to build all
packages locally. Check the `Taskfile.yaml` or use `task -l` for more commands.

## 🎈 Usage

You can either use this repository standalone or through NUR. See instructions
below.

There's also a cache so you don't need to build everything from scratch. Use
`cachix use wwmoraes` or configure it manually in your `nix.conf`:

- substituter: `https://wwmoraes.cachix.org`
- public key: `wwmoraes.cachix.org-1:N38Kgu19R66Jr62aX5rS466waVzT5p/Paq1g6uFFVyM=`

You should end up with something like this:

```text
substituters = https://cache.nixos.org https://wwmoraes.cachix.org
trusted-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= wwmoraes.cachix.org-1:N38Kgu19R66Jr62aX5rS466waVzT5p/Paq1g6uFFVyM=
```

### Standalone

```nix
{ pkgs, ... }:
let
	nurpkgs = import (builtins.fetchTarball "https://github.com/wwmoraes/nurpkgs/archive/master.tar.gz") { inherit pkgs; };
in {
	# use nurpkgs.<package-name> to reference a package from this repository
}
```

### NUR

Check <https://github.com/nix-community/NUR> on how to add NUR as a package
override. Then use the `nur.repos.wwmoraes.<package-name>` to install a package
from this repository.

Add notes about how to use the system.

## 🔧 Built Using

- [Nix](https://nixos.org) - Base language
- [Nixpkgs](https://github.com/NixOS/nixpkgs) - Libraries and much more

## 🧍 Authors

- [@wwmoraes](https://github.com/wwmoraes) - Idea & Initial work

## 🎉 Acknowledgements

- Hat tip to anyone whose code was used
- Inspiration
- References
