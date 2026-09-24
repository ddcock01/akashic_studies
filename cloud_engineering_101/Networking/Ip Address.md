**
**[Public vs Private IP Address](https://youtu.be/po8ZFG0Xc4Q?si=bReqdmmDVp3hGcsv)**

- [[Public IP addresses]] are registered to the Internet
	- Everyone of them are unique
- [[Private IP addresses]] are only used internally (within an organization, home, etc.)
	- These addresses aren’t unique (Different private networks will have duplicate addresses)
	- They identify the individual devices on the network.
	- For the device with this Private IP Address to access the internet a NAT will be needed
	- [[Network Address Translator] (NAT)] Translates 1 IP Address to another (A private address to a Public address so that a device can access the internet.)
**

-   
    

  

|   |   |   |
|---|---|---|
|Class|IP Address Range|Default Subnet Mask|
|A|10.0.0.0-10.255.255.255|255.0.0.0|
|B|172.16.0.0-172.31.255.255|255.255.0.0|
|C|192.168.0.0-192.168.255.255|255.255.255.0|

Want to find out the IP address of your device?

- Open CLI
- Windows: ipconfig
