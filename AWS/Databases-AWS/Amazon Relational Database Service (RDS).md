[[Amazon Relational Database Service (RDS)]] is a managed database service that makes setting up, operating and scaling relational databases in the cloud simple. [[Amazon Relational Database Service (RDS)]] supports 6 primary relational engeines:
- PostgreSQL
- MySQL
- MariaDB
- Oracle
- Microsoft SQL Server
- [[Amazon Aurora]]

# Problems Solved
- *Reduces Operational Overhead*: Focus on application development while AWS manages:
	- Hardware Provisioning
	- Database setup
	- OS/DB patching
	- Automated backups
- *Simplifies High Availability & Disaster Recovery*: Enables multi-AZ deployment with synchronous replication at the push of a button
- *Scalability*: 
	- Horizontal scaling = *Read Replicas*
	- Vertical Scaling: compute/storage without extensive downtime

# Core/Sub Features
- *Multi-AZ Deployment (High Availability)*
	- Synchronous replication to a Standby instance in a different [[AWS Availability Zones (AZ)]]
	- Automatic failover if the primary instance fails
		- CNAME DNS automatically points to the standby
			- Standby instances are for disaster recovery only and cannot serve read traffic
- *Read Replicas (Scalability & Performance)*
	- Asynchronous replication to offload read traffic from the primary database.
		- Can be created in multiple ways
			- Same [[AWS Availability Zones (AZ)]]
			- across [[AWS Availability Zones (AZ)]]
			- or cross-[[AWS Region]]
				- Greater disaster recovery and local read performance
		- Can be promoted to an independant database if needed
- *Backups & Restores*:
	- Automated backups
	- Manual DB Snapshots
- *Encryption & Security*: 
	- At-rest encryption via [[AWS Key Management Service (KMS)]]
	- Network security controlled via VPC [[Security Group]]

| **Feature**               | **Multi-AZ**                                  | **Read Replicas**                         |
| ------------------------- | --------------------------------------------- | ----------------------------------------- |
| **Primary Purpose**       | High Availability & Disaster Recovery         | Performance & Read Scaling                |
| **Replication Type**      | Synchronous                                   | Asynchronous                              |
| **Active/Passive?**       | Passive (Standby is not accessible for reads) | Active (Can receive SQL `SELECT` queries) |
| **Cross-Region Support?** | No (Single Region across AZs)                 | **Yes** (Cross-Region Read Replicas)      |
| **Automatic Failover?**   | **Yes**                                       | No (Requires manual promotion)            |