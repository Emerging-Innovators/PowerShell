######################################################################

                           # FSMO Roles

######################################################################

# InfrastructureMaster 
# PDCEmulator 
# RIDMaster 
# DomainNamingMaster 
# Schemamaster 

######################################################################

                # List of installed roles in my domain  

######################################################################

#-------------------Get domain level FSMO roles----------------------#

Get-ADDomain | select InfrastructureMaster, PDCEmulator, RIDMaster

#-------------------Get forest level FSMO roles----------------------# 

Get-ADForest | select DomainNamingMaster, SchemaMaster

#--------------------------------------------------------------------#