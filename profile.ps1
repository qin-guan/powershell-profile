$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression

$env:VOLTA_HOME="$env:HOME/.volta"

$env:PATH += ":$env:VOLTA_HOME/bin"
$env:PATH += ":$env:HOME/Library/Application Support/JetBrains/Toolbox/scripts"
$env:PATH += ":$env:HOME/.local/share/bob/nvim-bin"
$env:PATH += ":$env:HOME/.dotnet/tools/"
$env:PATH += ":/opt/podman/bin"
$env:PATH += ":/usr/local/bin"

oh-my-posh init pwsh --config "$HOME/.oh-my-posh/pure.omp.json" | Invoke-Expression
# Invoke-Expression (&starship init powershell)

# Aliases

New-Alias ls eza
New-Alias cat bat

function l { ls -lah $args }
function ll { ls -lh $args }
function la { ls -lAh $args }
function lsa { ls -lah $args }
function .. { cd .. }
function .... { ..;.. }
function ...... { ....;.. }
function ........ { ......;.. }
