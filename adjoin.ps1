param (
    [string] $password,
    [string] $username,
    [string] $domainname,
    [string] $servername, #"apcorpdccind01.corporate.caresoftglobal.com"
    [string] $oupath
)

$SecurePWd = ConvertTo-SecureString $password -AsPlainText -Force
$DomainJoinCred = New-Object System.Management.Automation.PSCredential ($username@$domainname, $SecurePWd )
Add-Computer -Credential $DomainJoinCred -OUPath $oupath -DomainName $domainname -Server $servername 
