#--------------------------------------------------------------------------------#
               
                             # FSMO Roles Transfer #

#---------------------------Transfer PDCEmulator---------------------------------#

Move-ADDirectoryServerOperationMasterRole -Identity "dc1" PDCEmulator

#----------------------------Transfer RIDMaster----------------------------------#

Move-ADDirectoryServerOperationMasterRole -Identity "dc1" RIDMaster

#-----------------------Transfer InfrastrctureMaster-----------------------------#

Move-ADDirectoryServerOperationMasterRole -Identity "dc1" Infrastructuremaster

#------------------------Transfer DomainNamingMaster-----------------------------#

Move-ADDirectoryServerOperationMasterRole -Identity "dc1" DomainNamingmaster

#---------------------------Transfer SchemaMaster--------------------------------#

Move-ADDirectoryServerOperationMasterRole -Identity "dc1" SchemaMaster

#--------------------------------------------------------------------------------#