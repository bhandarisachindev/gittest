@echo off

servicesec.exe /unlocksvc GTBDiscovery
servicesec.exe /unlocksvc RMAgent
servicesec.exe /unlocksvc GTBAgentMgr
servicesec.exe /unlocksvc GTBScanner
sc stop "GTBDiscovery" & sc config "GTBDiscovery" start=disabled
sc stop "RMAgent" & sc config "RMAgent" start=disabled
sc stop "GTBAgentMgr" & sc config "GTBAgentMgr" start=disabled
sc stop "GTBScanner" & sc config "GTBScanner" start=disabled