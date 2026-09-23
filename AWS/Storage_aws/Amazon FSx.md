A family of fully managed, high performance, third-party, file systems launched natively in the cloud, on AWS infrastructure. This solves the issue of migrating legacy third-party highly specialized, file systems into a hybrid or cloud exclusive environment.
- Handles all of hardware provisioning
- software patching
- replication
- backups
# Four File Engine Flavors
## [[Amazon FSx for Windows File Server]]
Engine specifically built for Windows-centric workloads and application compatibility on standard Windows file-sharing protocols
- Protocols Supported: Natively supports the **Server Message Block** (SMB)
- Natively integrates with Microsoft Active Directory (AD)
	- Allows enforcement of Windows Access Control Lists
	- User storage quotas
- High Availability: Multi-AZ configuration where AWS synchronously replicates data across zones and automatically handles failover.
- Scaling & Efficiency: Scales up to 10s of GB/s of throughput and millions of IOPS. 
	- Supports Data deduplication to reclaim unused storage blocks
		- Great for cost-optimization
- Best use cases: 
	- Corporate home directories
	- Windows-based content management
	- Business applications
	- Microsoft SQL Server database storage
## [[Amazon FSx for Lustre]]
A parallel distributed file system designed for compute-intensive workloads that require raw processing power.
	- Protocols Supported: POSIX-compliant client interfaces optimized for highly parallelized Linux clusters.
	- Amazon S3 "Data Lake" Integration: FSx for Lustre can sit directly in front of an Amazon S3 bucket. 
		- "read S3" as if it were local directory
		- high speed calculations
		- write output back to S3
	- Deployment modes:
		1.  Scratch: Cost-optimized, un-replicated temporary storage built for high-burst processing jobs
		2. Persistent: Replicated, long-term storage within a single AZ that automatically replaces failed servers in minutes.
	- Best Use Cases:
		- High-Performance Computing (HPC)
		- Machine Learning (ML) Training
		- Video rendering
		- Financial Modeling
## [[Amazon FSx for NetApp ONTAP]]
Hybrid/Cloud Migration from legacy on premise architecture to AWS cloud native infrastructure.
- Protocols Supported: Multi-protocol powerhouse, simultaneously supports:
	- NFS (Linux)
	- SMB (Windows)
	- ISCSI (block storage)
- Cross-Platform Compatibility
	- Linux
	- Windows
	- MacOS
	- VMware Cloud on AWS
	- Amazon WorkSpaces
	- AppStream 2.0
	- Container services (ECS and EKS)
- Storage Efficiency: Includes NetApp's native, advanced features
	- automatic storage scaling
	- Snapshots
	- Compression
	- Data Deduplication
	- Data Replication
- Point-in-Time Cloning: near - instant duplication of volumes
	- allows dev/test teams to spin up replica staging datasets in seconds with zero write amplification
- Best Use Cases:
	- "Lift-and-shift"
		- Hybrid Cloud Architecture
		- Multi-protocol file-sharing environments
## [[Amazon FSx for OpenZFS]]
Open-source, high performance file system built on the ZFS storage platform. Manuever ZFS-reliant workloads to AWS without modifying architecture.
- Protocols Supported: Natuvely compatible with NFS 
- Performance Profile: Engineered for speed and scales up to 1,000,000 IOPS with sub-0.5 millisecond latencies
- Best Use Cases:
	- Latency-sensitive applications
	- Financial transaction processing
	- media production pipelines
	- Developers shifting ZFS-dependent systems from on-premises to AWS