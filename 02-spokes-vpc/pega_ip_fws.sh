aws ec2 describe-network-interfaces --filters "Name=tag:Name,Values=instance-01_eth1" | grep -i PublicIp | cut -f4 -d'"' | uniq > ip_eth1_firewall1.txt
aws ec2 describe-network-interfaces --filters "Name=tag:Name,Values=instance-02_eth1" | grep -i PublicIp | cut -f4 -d'"' | uniq > ip_eth1_firewall2.txt

