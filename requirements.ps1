# Install required modules for this repo

$Modules = @(
    'MicrosoftTeams',
    'ExchangeOnlineManagement',
    'Microsoft.Graph',
    'PSScriptAnalyzer'
)

foreach ($Module in $Modules) {
    if (-not (Get-Module -ListAvailable -Name $Module)) {
        Install-Module $Module -Scope CurrentUser -Force
    }
}