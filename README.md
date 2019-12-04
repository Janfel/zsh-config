# Zsh Configuration of Janfel

> Use at your own risk

## Prerequisites

- Zsh (obviously)
- The [antibody](https://getantibody.github.io/) plugin manager
- [ripgrep](https://github.com/BurntSushi/ripgrep) (optional)

## Installation

1. Clone this repo into the desired location

```sh
git clone 'https://github.com/Janfel/zsh-config.git' ~/.config/zsh
```

2. Compile the config files and update the plugins

```sh
~/.config/zsh/zsh-cfg bundle compile update
```

3. Point Zsh to your new config folder (if there are multiple users on your system use symlinks instead)
   **WARNING** This will change the Zsh config directory for **all** users!

```bash
sudo tee -a /etc/zsh/zshenv <<<'export ZDOTDIR=$HOME/.config/zsh'
```

## Configuration

Change `~/.config/zsh/zsh-cfg` as you wish.
If you do not have `ripgrep` installed, replace the command `rg` with `grep`.

## Usage

### Changing the config

Just put your configuration script in a \*.zsh file under the corresponding directory.

- `init` for `.zshrc`
- `env` for `.zshenv`
- `profile` for `.zprofile`

### Adding plugins

Just add an antibody static plugin file with a .plug extension into the corresponding directory.
Then create a static plugin file with:
```sh
~/.config/zsh/zsh-cfg bundle
```

### Recompiling

If you have changed files in the config directories, you have to recompile your config files

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

Jan Felix Langenbach – o.hase3@gmail.com

Distributed under the GPLv3. See `LICENSE` for more information.

[https://github.com/Janfel](https://github.com/Janfel/)

## Contributing

1. Fork it (<https://github.com/Janfel/zsh-config/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
