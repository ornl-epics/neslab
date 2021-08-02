#!../../bin/linux-x86_64/neslab

## You may have to change neslab to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/neslab.dbd"
neslab_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/Neslab.db")
drvAsynIPPortConfigure ("commsN","10.112.63.80:4001",0,0,0)




####################################################
# autosave
####################################################
epicsEnvSet IOCNAME CG3-Neslab
epicsEnvSet SAVE_DIR /home/controls/var/$(IOCNAME)

save_restoreSet_Debug(0)

### status-PV prefix, so save_restore can find its status PV's.
save_restoreSet_status_prefix("CG3:SE:NESLAB:")

set_requestfile_path("$(SAVE_DIR)")
set_savefile_path("$(SAVE_DIR)")

save_restoreSet_NumSeqFiles(3)
save_restoreSet_SeqPeriodInSeconds(600)
set_pass1_restoreFile("$(IOCNAME).sav")
###################################################

cd "${TOP}/iocBoot/${IOC}"
iocInit


#This prints low level commands and responses
asynSetTraceMask("commsN",0,0x07)
asynSetTraceIOMask("commsN",0,0x07)


#create request file and start periodic 'save'
epicsThreadSleep(5)
makeAutosaveFileFromDbInfo("$(SAVE_DIR)/$(IOCNAME).req", "autosaveFields")
create_monitor_set("$(IOCNAME).req", 5)




