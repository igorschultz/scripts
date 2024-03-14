# Import the Active Directory module
Import-Module ActiveDirectory

# Specify the parameters for the new user
$Username = "igors"          # Username for the new user
$Password = "Trend@123"      # Password for the new user
$FirstName = "Igor"            # First name of the new user
$LastName = "Schultz"              # Last name of the new user
$OU = "OU=Users,DC=igorlab,DC=local"  # Organizational Unit (OU) where the user will be created

# Create a new domain user
New-ADUser `
    -SamAccountName $Username `
    -Name "$FirstName $LastName" `
    -UserPrincipalName "$Username@igorlab.local" `
    -GivenName $FirstName `
    -Surname $LastName `
    -AccountPassword (ConvertTo-SecureString -AsPlainText $Password -Force) `
    -Enabled $true `
    -Path $OU
