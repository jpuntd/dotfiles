# dotfiles

Some dotfiles that I like to keep in sync using a bare git repository.
Technique is described in https://www.atlassian.com/git/tutorials/dotfiles

- No extra tooling,
- no symlinks,
- files are tracked on a version control system,
- you can use different branches for different computers.

## Setup

```shell
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

Also add the alias to `.bashrc`:

```shell
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Now we can use git subcommands to take care of dotfiles:

```shell
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```
