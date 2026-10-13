[[Ip addresses]] are like mailing/street address but for a device on a network
- The address is made up of 32 bits total
	- 4 digits = x.x.x.x
	- each digit is a range from 0-255
[[CIDR Block]] or Classless Inter-Domain Routing notation is how we section these address off into networks and subnetworks. Written as an IP address followed by a slash and a prefix length e.g. 10.0.0.0/16

|**CIDR Block**|**What is locked?**|**Valid Range**|**Total IPs**|
|---|---|---|---|
|**`10.0.0.0/16`**|First 2 numbers (`10.0.x.x`)|`10.0.0.0` to `10.0.255.255`|65,536|
|**`10.5.0.0/16`**|First 2 numbers (`10.5.x.x`)|`10.5.0.0` to `10.5.255.255`|65,536|
|**`10.0.1.0/24`**|First 3 numbers (`10.0.1.x`)|`10.0.1.0` to `10.0.1.255`|256|
- The number after the slash tells you how many bits are locked for the network identifier
	- The remaining bits are left open for host addresses (devices, EC2 instances, etc.)
	- The smaller the number after the slash, the larger the IP range.

|**CIDR Prefix**|**Locked Bits**|**Host Bits**|**Total Available Addresses**|**Common AWS Usage**|
|---|---|---|---|---|
|`/16`|16 bits|16 bits|65,536|Standard VPC size|
|`/24`|24 bits|8 bits|256|Standard Subnet size|
|`/28`|28 bits|4 bits|16|Smallest allowed subnet in AWS|
|`/32`|32 bits|0 bits|1|A single specific IP address|
- Network = [[VPC]] = the block (project buy the block!!!)
- subnetworks = [[subnet]] = the individual homes on the block and the rooms within them.

AWS Subnets Nuance: AWS automatically reserves 5 IP addresses per subnet for:
1. the network address
2. router address
3. DNS
4. future use
5. broadcast address
