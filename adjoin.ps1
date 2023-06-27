param (
    [string] $password,
    [string] $username,
    [string] $domainname,
    [string] $servername, #"apcorpdccind01.corporate.caresoftglobal.com"
    [string] $oupath
)

$SecurePWd = ConvertTo-SecureString $password -AsPlainText -Force
$DomainJoinCred = New-Object System.Management.Automation.PSCredential ($username@$domainname, $SecurePWd)
Add-Computer -Credential $DomainJoinCred -OUPath $oupath -DomainName $domainname -Server $servername -restart -force

#
#
#$oupath="OU=Hcadpool,OU=VDI,OU=Azure,OU=O365-Sync,DC=corporate,DC=caresoftglobal,DC=com"
#$cred=get-Credential
#Add-Computer -Credential $cred -OUPath $oupath -DomainName corporate.caresoftglobal.com -Server apcorpdccind01.corporate.caresoftglobal.com -restart -force