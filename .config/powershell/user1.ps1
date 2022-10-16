# Alias
cd
# basics
function new { New-Item @args }
function del { Remove-Item @args}
function delr { Remove-Item -Recurse @args}
function delf { Remove-Item -Force @args}
function delrf { Remove-Item -Recurse -Force @args}

# git
Set-Alias g git
function gi { git init }
function gba { git branch -a }
function gchb { git checkout -b @args }
function gch { git checkout }
function gs { git status }
function gad { git add @args } 
function gcm { git commit -m @args } 

Set-Alias grep findstr
Set-Alias tig "C:\Program Files\Git\user\bin\tig.exe"
Set-Alias less "C:\Program Files\Git\user\bin\less.exe"
Set-Alias vim nvim

#Utility
function which 	($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Terminal
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'user1.omp.json'
function posh { oh-my-posh init pwsh --config @args }
oh-my-posh init pwsh --config $PROMPT_CONFIG | Invoke-Expression
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PsReadLineOption -EditMode Emacs
Set-PsReadLineOption -BellStyle None
Set-PsReadLineKeyHandler -Chord "Ctrl+d" -Function DeleteChar
Set-PsFzfOption -PSReadlineChordProvider "Ctrl+f" -PSReadlineChordReverseHistory "Ctrl+r"

