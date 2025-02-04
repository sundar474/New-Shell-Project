### Attach EBS volumes to running EC2 instance

**NOTE**
* EBS volume should be in same AZ where you instance is running.


### Steps
By default you can't see the volume in Linux server, we need to do some configuration.


You can check the volume available or not using below command

'''
lsblk
'''

* Create file system from Volume

'''''
sudo mkfs -t xfs /dev/xvdf
'''''

sudo yum install xfsprogs
sudo mkdir /data
sudo mount /dev/xvdf /data