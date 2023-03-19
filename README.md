# dotfiles
MacOs/Windows dotfiles

## Setup:
```bash
$ git init --bare $HOME/.dotfiles
$ echo "alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
$ zsh
$ config config --local status.showUntrackedFiles no
```
Add all the files that need to be tracked by using `$ config add [FILENAME]` 

## New system installation
```bash
$ echo ".dotfiles" >> .gitignore
$ git clone --bare <git-repo-url> $HOME/.dotfiles
$ alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ config checkout
```
### In case of an error, then some files need to be removed, backedup or renamed
```bash
$ mkdir -p .config-backup && \
$ config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
$ xargs -I{} mv {} .config-backup/{}
```
Then 
```bash
$ config checkout
$ config config --local status.showUntrackedFiles no
```
## More details:
https://www.atlassian.com/git/tutorials/dotfiles
