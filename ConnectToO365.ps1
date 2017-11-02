$UserCredential = Get-Credential
Import-Module MsOnline
Connect-MsolService -Credential $UserCredential
$exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $UserCredential -Authentication "Basic" -AllowRedirection
Import-PSSession $exchangeSession -DisableNameChecking
