[[Amazon Elastic File System (EFS)]] is a fully managed, serverless network file system (NFS) designed to be shared. Unlike [[Amazon Elastic Block Storage (EBS)]], [[Amazon Elastic File System (EFS)]] <u>can connect to multiple [[EC2 instances]]</u> at once for <u>shared file</u> storage capability.
	E.G. Google Drive, One Drive
- [[POSIX (Portable Operating System Interface) Compliance]]: Standard file system interface and standard file API semantics supporting:
	- directory hierarchies: Organizes data using standard nested folders and files
		-E.G. /user/documents/theowaf
	- file locking: Supports advisory and mandatory file locks, preventing two processes or servers from corrupting a file by writing to it simultaneously.
		-e.g. fcntl or flock
	- read-after-write consistency
	- Standard File permissions: Enforces Unix-style user, group, and world permissions
	- Atomic Operations & Consistency: Guarantees operations like renaming or appending data happen completely or not at all, offering strict read-after-write consistency.
	- Metadata Support: Tracks file creation dates, modification times, access control list (ACLs), and file ownership natively
- Linux ONLY: EFS natively supports the NFSv4/1 protocol and is compatible only with Linux-based AMIs. [[Amazon FSx]] for Windows File Server
- Multi-AZ Durability: By default, EFSSS automatically replicates your data synchronously across multiple Availability Zones within a region
	- High Availability
	- Fault isolation/tolerance
- Serverless Scaling: File system dynamically grows and shrinks on-demand as you add, delete, copy files. 
	- Pay for what you use.
# Networking + Security: Mount Targets
	Connecting EC2 instances across different [[Availability Zones (AZ)]] via Mount Targets
	- [[Subnet Placement]]: Create EFS Mount Target (connected via [[Private IP Address]]) in each [[Availability Zones (AZ)]] in the same AZ where the [[EC2 instances]] resides.
	- [[Security Group]] Handshake: Access to EFS is controlled using [[Security Group]]
		1. bridges connection between [[Amazon Elastic File System (EFS)]] and [[EC2 instances]]. Outbound traffic on TCP prt 2049
		2. EFS Mount Target's [[Security Group]] must allow inbound traffic on TCP port 2049 specifically from the EC2 instance's [[Security Group]] as a source

# Performance & Throughput Modes
You must configure EFS file system performance characteristics
## Performance Modes (Set at creation, immutable)
1.  General Purpose (Default): Best for latency-sensitive workloads
	-  Standard web serving
	- content management systems (CMS like WordPress)
	- home directories
	- Software development environments
2.  Max I/O: Designed for highly cooperative/collaborative editing workflows. 
	- Slightly relative latency for file operations
	- Scales massively for aggregate throughput levels. 
	- Use Case:
		- Big data analytics
		- media processing
		- machine learning training clusters
## Throughput Modes (Can be changed on-the-fly)
1.  Bursting (Default): Throughput scales dynamically based on the size of your file system (1 TB of Storage baseline provides 50 MiB/s, bursting up to 100 MiB/s)
2. Provisioned: Establish limit/cap for high throughput rate
3. Elastic: Completely serverless throughput; scales read and write throughput up and down dynamically to match your active workload demands.
	- Use case: Unpredictable or high spiky traffic
# Storage Classes & Lifecycle Management
Standard EFS storage is roughly 3x more expensive per GB than [[Amazon Elastic Block Storage (EBS)]] gp2/gp3 storage. Optimize cost with **EFS Storage Tiers** and automated **Lifecycle Policies**
1. EFS Standard: frequently accessed files
2. EFS Infrequent Access (EFS-IA): Lower cost than standard storage with charge per-GB retrieval fee when files are read.
3. EFS Archive: For rarely accessed files (few times per year), for up to 50% storage cost reduction compared to the IA tier.
4. EFS One-Zone: Stores data within a single AZ, reduces base storage cost by approximately 90%
	- Lowers availability
		- Use cases: development environments or for data the is easily reproducible. 
# Storage Service Comparison
|Storage Service|Architecture Level|Concurency Limits|Regional Scope|Best Use Cases|
|---|---|---|---|---|
|**Amazon EBS**|Block Storage|Connected to **one** EC2 instance at a time (except raw Multi-Attach io1/io2)|Locked to a **single AZ**|OS boot volumes, databases (RDS/self-managed), transactional low-latency workloads|
|**Amazon EFS**|Network File Storage|Shared concurrently by **hundreds/thousands** of EC2 instances|**Multi-AZ** by default|Web servers (WordPress), shared code repositories, home directories, media processing|
|**Amazon S3**|Object Storage|Access is serverless via **HTTPS APIs** from anywhere on the web|**Global namespace**, replicates across 3+ AZs|Static website hosting, raw data lakes, backup archives, media delivery backing|