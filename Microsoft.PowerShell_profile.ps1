#Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim
Set-Alias vi nvim
Set-Alias v nvim
Set-Alias c clear
Set-Alias idea idea64.exe

#Terminal Icons
Import-Module Terminal-Icons

#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView

#Oh My Posh
oh-my-posh init pwsh --config $HOME\Documents\PowerShell\emodipt-extend.omp.json | Invoke-Expression

function ec {vim $PROFILE}

function whereis ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function reload {
  wt --window 0 -p "Windows Powershell"
  exit
}

function gogit {
  cd $HOME\Documents\GitHub
}

function govim {
  cd $env:LOCALAPPDATA\nvim
}	


