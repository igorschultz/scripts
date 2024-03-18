# Import the Active Directory module
Import-Module ActiveDirectory

# Specify the parameters for the new user
$Username = "igors"          # Username for the new user
$Password = "Trend@123"      # Password for the new user
$FirstName = "Igor"            # First name of the new user
$LastName = "Schultz"              # Last name of the new user

$splat = @{
    SamAccountName = $Username
    Name = "$FirstName $LastName"
    GivenName = $FirstName
    Surname = $LastName
    AccountPassword = (ConvertTo-SecureString -AsPlainText $Password -Force) 
    Enabled = $true
}

# Create a new domain user
New-ADUser @splat