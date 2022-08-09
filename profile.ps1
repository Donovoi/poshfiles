# My aliases and custom scripts
$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
. "$root/env.ps1"
. "$root/android.ps1"
. "$root/git.ps1"
. "$root/terminal.ps1"
. "$root/typo.ps1"
. "$root/rg.ps1"
. "$root/spotify.ps1"

if ($IsWindows) {
  . "$root/windows.ps1"
}

# Git support
Import-Module posh-git

# Command line editing
Import-Module PSReadLine
. "$root/psreadline.ps1"

# zoxide
Invoke-Expression (& {
  (zoxide init --hook 'pwd' powershell) -join "`n"
})

# Prompt
Import-Module oh-my-posh
Set-PoshPrompt "$root/heytherewill.omp.json"

# Fish-like autocompletion
set-psreadlineoption -predictionsource history

# Pretty icons
Import-Module -Name Terminal-Icons

# Better history search
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Emoji autocompletion
Import-Module PSFzf
. "$root/emoji.ps1"

Clear-Host

# Help tips so I don't forget all things I can use
. "$root/tips.ps1"
$tips | Get-Random | Write-Output