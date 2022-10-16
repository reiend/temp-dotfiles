## install scoop
# irm get.scoop.sh | iex

## install git
# scoop install winget
# winget install --id Git.Git -e --source winget
# scoop install curl sudo jq

## install text editor
# scoop install neovim

# scoop install posh-git
# scoop install oh-my-posh
# oh-my-posh init pwsh --config 'C:/Users/Posh/jandedobbeleer.omp.json' | Invoke-Expression

# scoop install nvm
# nvm install 16.18.0
# nvm use 16.18.0

# Install-Module -Name Terminal-Icons -Repository PSGallery -Force
# Import-Module Terminal-Icons
# Install-Module -Name z -Force
# z desk
# Install-Module -Name PSReadLine -RequiredVersion 2.2.0-beta1 -AllowPrerelease
scoop install fzf
Install-Module -Name PSFzF -Scope CurrentUser -Force

