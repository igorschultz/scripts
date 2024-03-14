Set-DnsClientServerAddress -InterfaceIndex (Get-NetAdapter).InterfaceIndex -ServerAddresses "10.0.130.35"
$DomainName = "igorlab.local"  # Replace with your domain name
$DomainUser = "igors"      # Replace with a domain user with permissions to add computers to the domain
$DomainPassword = "Trend@123"     # Replace with the password for the domain user

# Credentials for the domain user
$Credential = New-Object System.Management.Automation.PSCredential($DomainUser, (ConvertTo-SecureString -String $DomainPassword -AsPlainText -Force))

# Add the computer to the domain
Add-Computer -DomainName $DomainName -Credential $Credential -Restart
