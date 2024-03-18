Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Start-Sleep -Seconds (2 * 60)  # 10 minutes * 60 seconds
Install-ADDSForest -DomainName igorlab.local -DomainNetbiosName igorlab -SafeModeAdministratorPassword (ConvertTo-SecureString -String 'Trend@123' -AsPlainText -Force) -Force