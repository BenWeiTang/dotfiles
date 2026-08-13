# Getting Started

## Install GNU Stow

Using apt:

```sh
sudo apt install stow
```

Using homebrew:

```sh
brew install stow
```

## Clone repo

```sh
# Needs to be in the user's home directory
cd ~

# Clone repo, including submodules, e.g., nvim
git clone --recursive git@github.com:BenWeiTang/dotfiles.git
```

## Use a Configuration

```bash
# In the dotfiles directory
cd ~/dotfiles/

# As an exmaple, stow ghostty
stow ghostty
```

# Why NeoVim is a Submodule

I want to keep `nvim` as its own repository because I also use it on Windows machines where `stow` does not necessary work. In this case, I want to directly clone the nvim repo into the config path on Windows, which is `C:\Users\<YourUsername>\AppData\Local\nvim\`.

Given the nature of this dual mandates, I decided to keep the `nvim` configurations as its own repo and add it as a submodules to this `dotfiles` repo.
