#!/bin/bash

echo " "
echo "########################################"
echo "# WOOF -> Install dstat, iperf, puppet #"
echo "########################################"
yum -y install dstat
yum -y install iperf
yum -y install puppet

echo " "
echo "########################################"
echo "# WOOF -> Puppet limits and sysctl     #"
echo "########################################"
puppet module install fiddyspence-sysctl
puppet module install erwbgy-limits

echo " "
echo "########################################"
echo "# WOOF -> Extending partition:         #"
echo "########################################"
growpart /dev/vda 2

echo " "
echo "########################################"
echo "# WOOF -> Done... Restarting VM.       #"
echo "########################################"
shutdown -r now

