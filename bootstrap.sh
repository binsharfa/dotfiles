#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/Projects/dotfiles"

cd "$DOTFILES_DIR"

echo "Pulling latest changes..."
git pull origin main

echo "Creating symlinks..."

FILES=(
  .aliases
  .bash_profile
  .bash_prompt
  .bashrc
  .curlrc
  .editorconfig
  .exports
  .functions
  .gitattributes
  .gitconfig
  .gitignore
  .gdbinit
  .gvimrc
  .hushlogin
  .inputrc
  .screenrc
  .tmux.conf
  .vimrc
  .wgetrc
)

for file in "${FILES[@]}"; do
  ln -sfn "$DOTFILES_DIR/$file" "$HOME/$file"
done

# Link directories
ln -sfn "$DOTFILES_DIR/.vim" "$HOME/.vim"
ln -sfn "$DOTFILES_DIR/bin" "$HOME/bin"

echo "Done ✅  Dotfiles successfully linked."
echo "Reloading shell..."
exec "$SHELL"


