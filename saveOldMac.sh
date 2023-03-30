mkdir -p ~/migration/home/
mkdir -p ~/migration/Library/"Application Support"/
mkdir -p ~/migration/Library/Preferences/
mkdir -p ~/migration/Library/Application Support/
mkdir -p ~/migration/rootLibrary/Preferences/SystemConfiguration/

# what is worth reinstalling?
brew leaves              > brew-list.txt    # all top-level brew installs
brew list --cask > cask-list.txt
npm list -g --depth=0    > npm-g-list.txt

cp -Rp \
    ~/.zshrc \
    ~/.zsh_history \
    ~/.gitconfig \
    ~/.aliases \
    ~/.ssh \
        ~/migration/home