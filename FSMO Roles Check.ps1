############### List of installed roles in my domain  ################

# InfrastructureMaster 
# PDCEmulator 
# RIDMaster 
# DomainNamingMaster 
# Schemamaster 

#-------------------Get domain level FSMO roles----------------------#

Get-ADDomain | select InfrastructureMaster, PDCEmulator, RIDMaster

#-------------------Get forest level FSMO roles----------------------# 

Get-ADForest | select DomainNamingMaster, SchemaMaster

#--------------------------------------------------------------------#