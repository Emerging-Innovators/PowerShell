########################################################################### Get AD Administrators list #####################################################################

Get-ADGroupMember -Identity Administrators | Select-Object name, objectClass,distinguishedName | Export-CSV "C:\temp\ADGroupMember.csv" -NoTypeInformation -Encoding UTF8

############################################################################# Get Enterprise Admin list ####################################################################

Get-ADGroupMember -Identity 'Enterprise Admins' -Recursive | Export-CSV "C:\temp\Enterprise Admins.csv" -NoTypeInformation -Encoding UTF8 | Out-GridView

############################################################################## Get-ADUser Properties #######################################################################

Get-ADUser -identity alex.sg -properties *  | Export-csv -path "C:\temp\Enterprise Admins.csv" -NoTypeInformation -Encoding UTF8

############################################################################## Get AD Group Members ########################################################################

Get-ADGroup -Filter {GroupScope -eq "DomainLocal"} | Get-ADGroupMember | Select-Object name, objectClass,distinguishedName | Out-GridView

############################################################## Domain User Lats Logon Info #################################################################################

Get-ADUser -Identity SQLAdmin -Properties LastLogon | Select Name, @{Name='LastLogon';Expression={[DateTime]::FromFileTime($_.LastLogon)}}

###########################################################################################################################################################################

