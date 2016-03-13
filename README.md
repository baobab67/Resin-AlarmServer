# Resin-AlarmServer
Resin.io Dockerfile and config to allow SmartThings-DSC-AlarmServer to be pushed to a device.
Assumes you have read https://github.com/kholloway/smartthings-dsc-alarm and https://github.com/juggie/AlarmServer

1. Edit the `alarmserver.cfg` file
2. Create your own self signed Certs and place in same directory. See https://github.com/juggie/AlarmServer
4. To deploy: `git clone https://github.com/baobab67/Resin-AlarmServer`
  - Setup your http://resin.io account
  - Configure a device and get the git location to push to
  - Example: `git remote add resin user_name@git.resin.io:user_name/alarmserver`
  - Build and provision: `git push resin master:master-arm`  
5. Note: mater-arm was needed as QEMU was unable to process the `git clone` command in the `Dockerfile`
