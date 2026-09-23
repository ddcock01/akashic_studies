[[AWS Transit Gateway]] is a central hub-and-spoke modeled connection for interconnecting [[Virtual Private Clouds (VPC)]] and on-premise networks
- Centralized hub-and-spoke connectivity for many VPCs and hybrid networks
- Utilizes [[Private AWS Network Backbone]] for transporting data.
- Medium to high set up that require configuring attachments and [[Route Table]]
- Scales up to 50 Gbps per VPC attachment with minor routing latency
- No [[CIDR Block]] overlap for direct VPC attachments
- Cost Structure: Hourly fee per attachment + data processing charges per GB
- Fundamentally regional but can connect across different regions, making a global network of VPC connections.
- Uses route tables to control and limit which VPCs can communicate with each other.
- Integrates and routes traffic between VPCs, VPN connections, and AWS Direct Connect (DX) Gateways


![[Pasted image 20260903085020.png]]

# AWS Transit Gateway vs [Virtual Private Cloud (VPC) Peering]
| **Feature / Metric**        | **VPC Peering**                                                                     | **AWS Transit Gateway (TGW)**                                                                       |
| --------------------------- | ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| **Topology**                | **Point-to-Point** (Full mesh required for all-to-all connectivity)                 | **Hub-and-Spoke** (Centralized routing hub)                                                         |
| **Transitive Routing**      | **No.** Traffic cannot pass _through_ a VPC to reach another VPC                    | **Yes.** Spoke VPCs can route through TGW to reach other VPCs or on-prem networks                   |
| **Connection Scaling**      | High complexity at scale ($N \times (N-1) / 2$ connections)                         | Simple scaling (1 attachment per VPC added to the hub)                                              |
| **Edge Gateway Sharing**    | Cannot share NAT Gateways, Internet Gateways, or Direct Connect across peers        | **Can share** Direct Connect, VPNs, NAT Gateways, and inspect traffic via Centralized Security VPCs |
| **Performance / Bandwidth** | **Highest.** Direct connection with no single-point bottleneck or extra hop latency | High, but traffic flows through the TGW software appliance abstraction                              |
| **Cost Model**              | No hourly connection fee; standard inter-AZ/Region data transfer rates              | Hourly fee per attachment + data processing charge per GB                                           |
# Sub-Features
- Site-to-Site VPN [[Equal-Cost Multi-Path Routing  (ECMP)]] : This is a routing strategy that allows packets to be forwarded over multiple “best paths” simultaneously.
	- [[Equal-Cost Multi-Path Routing (ECMP)]] = a bundle of different paths with different bandwidths.
- Cross-Account Sharing via RAM: allows the sharing of Transit Gateway with other AWS accounts via the AWS Resource Access Manager (RAM)
- Multicast Support: Only service that enables IP multicast
	- Uses IGMP (Internet Group Management Protocol)
		- Dynamic host joins/leaves
		- Static API group membership
		- Nitro-based [[EC2 instances]]
			- Media streaming
			- Financial Data Feeds
- Transit Gateway X Direct Connect Gateway (DXGW): 
	- Couple Transit Gateway with [[Direct Connect Gateway (DXGW0)]] via Transit Virtual Interface (Transit VIF)
	- Private VIF coupled with VGW or DXCW connects 10 VPCs max
	- Transit VIF coupled with TGW connects hundreds/thousands of VPCs and on-premise networks via Direct Connect
- Transit Gateway Flow Logs: 
	- Survey the network traffic data flowing through your Transit Gateway via VPC Flow Logs.
		- Troubleshoot connectivity issues
		- Capture IP traffic metrics
			- Security analysis
			- Compliance/auditing
			- Performance improvement
		- Publish logs to CloudWatch Logs, Amazon S3, or Amazon Kinesis Data Firehose