# Zsh Configuration of Janfel

> Use at your own risk

## Prerequisites

- Zsh (obviously)
- The [antibody](https://getantibody.github.io/) plugin manager
- GNU AWK

## Installation

1. Clone this repo into the desired location

```sh
git clone 'https://github.com/Janfel/zsh-config.git' ~/.config/zsh
```

1. Compile the config files and update the plugins

```sh
~/.config/zsh/zsh-cfg bundle compile update
```

1. Point Zsh to your new config folder (if there are multiple users on your
   system use symlinks instead) **WARNING** This will change the Zsh config
   directory for **all** users!

```bash
sudo tee -a /etc/zsh/zshenv <<<'export ZDOTDIR=$HOME/.config/zsh'
```

## Configuration

Change `~/.config/zsh/zsh-cfg` as you wish.

## Usage

### Changing the config

Just put your configuration script in a \*.zsh file under the corresponding directory.
The files are included in lexical order.

- `init` for `.zshrc`
- `env` for `.zshenv`
- `profile` for `.zprofile`

### Adding plugins

Just add it into a `.zshx` file with the following shebang.
This makes the file work just like one of `antibody`s static plugin files.

``` sh
#!/usr/bin/env -S sh -c 'antibody bundle <"$0"'
```

### Recompiling

If you have changed files in the config directories,
you have to recompile your config files. Be aware that this
executes any `.zshx` files in the directories.

```sh
~/.config/zsh/zsh-cfg compile
# or just
update_zsh
```

### Updating

To update your antibody plugins

```sh
antibody update
# or
~/.config/zsh update
# or just
upgrade_zsh
```

## Meta

Distributed under the GPLv3. See `LICENSE` for more information.

[https://github.com/Janfel](https://github.com/Janfel/)

## Contributing

1. Fork it (<https://github.com/Janfel/zsh-config/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
