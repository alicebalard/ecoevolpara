
:**Q:**: **A harddisk seems to be faulty what do I have to do?**
:**A:**: First you need to read the section about the filesystem and harddiskmanagement. Start Slack and look at the latest maintenance-report. Was the test passed? Then start the diagnosis with smartctl -???? and btrfs fi show. Look carefully through the smartctl-log and try to identify the harddisk and write down the serial number. If every harddisk passes the SMART-test they are most likely fully functionating. If you found a drive that is not passing the test you need to swap it. Find out the terabyte-size and the general size of the harddisk (3,5" in Svalbard and 2,5" in Harriet). Then order a new one as soon as possible. Every day you lose brings you closer to a dataloss. On Beagle you just need to go to the cellar into the plastiklager to swap it. But for Svalbard and Harriet you need access to ther server room inside the Grimm-Zentrum. Therefore you need to contact our contact at the Grimm-Zentrum. When you swap the drive check the serial number, if you really got the right one. Despite hotswap is available it is recommend to shut down the server first. When you installed the new drive and turned the server back on follow the instructions inside filesystem and harddiskmanagement to recover the full RAID 1.

:**Q:**: **I want to add a harddisk to Svalbard, how?**
:**A:**: **Just follow the guide inside filesystem and harddiskmanagement to add a drive to Svalbard. It is recommend to only add drives that support 24/7 usage like the WD Red (Pro).**

:**Q:**: **The Maintenance-report from one server shows "check the logs" what do I have to do?**
:**A:**: **First check for a false alarm. Therefore you need to understand how it works, see here "link to section custom cron"**

Q: Dont get a picture, but pc boots up
A: Press ctrl + alt + F1 to switch to terminal mode and reinstall the desktop manager und desktop. ctrl + alt + F7 to switch back to the graphical interface.



FAQ Seafile
===
- Q: CLI client failing with "ccnet-init not found..." A: look at the tutorial above, download the ccnet-init binary manually
- Q: no .ccnet directory found. A: you can't start seaf-cli without -c (confid dir)
- no root
- conflicts with system path
- screenshot log init failed
- the client indexing and uploading all the time and won't stop