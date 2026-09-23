[[Amazon ElastiCache]] is a fully managed, in-memory caching service designed to deliver sub-millisecond latencies by storing frequently accessed query results, session states, or heavy computations in memory.
- Slashes read latency
- offloads CPU pressure from relation databases
# Supports Two Open-Source In-Memory Engines
1. [[Amazon Elasticache: Redis]] : The Stateful Data engine capable of perating as a cache, database, and a message broker
	- Redis behaves like an advanced, highly durable, and stateful database
		- High Availability & Redundancy
			- Supports *Multi-AZ* with *Auto-Failover* 
			- *Read Replicas
		- Data Durability
			- Supports disk persistence via *AOF (Append Only File*
			- Snapshot backup-and-restore features
		- Complex Data Structures beyond *simple strings
			- sorted sets
			- hashes
			- lists
			- sets
		- Scale Model: 
			- Scaled horizontally via *clustering (sharding)*
			- Vertical Scaling by selecting larder node types
2.  [[Amazon ElastiCache: Memcached]] : The Simple Web Cache
	- Memcached is pure, ultra-fast, multi-threaded cache
		- No High Availability:
			- No replication supported
				- if node fails, cached data is lost
		- No Persistence: holds data only in active memory
		- Data Partitioning (Sharding):
			- Horizontal Scaling: spreads data across multiple nodes
		- Multi-threaded: Multi CPU/EC2 instance utilization. Highly efficient for simple key-value

# Common Use Cases
Note: [[Amazon ElastiCache]] is frequently placed in front of a database like [[Amazon Relational Database Service (RDS)]] or [[Amazon Aurora]] to cache expensive SQL queries. However, it can be a standalone in-memory data store.

1. Session State Store 
	- Web servers (EC2) are kept completely Stateless.
	- Session payload (login token, shopping cart contents, user preferences) written directly to ElastiCache.
2.  Distributed Rate Limiting & API Throttling:
	- EC2 dealing with incoming API traffic use ElastiCache to track request per IP address in real time with microsecond speed.
3. Pub/sub messaging & Real-Time Queuing:
	- EC2 app servers can use Redis Pub/Sub inside Elasticache to pass lightweight messages and real-time chat data directly to each other without hitting a persistent disk or database.
4.  Leaderboards & Ranking Engines:
	- Gaming apps running on EC2 uses Redis Sorted Sets inside ElastiCache to manage real-time player scores and high-score leaderboards entirely in memory

# Sub features

- Redis Pub/Sub: A publish-subscribe pattern where producers publish messages to channels and subsribers receive them in real time
	- Chat rooms
	- live notification channels
- Redis Sorted Sets
- Redis Steams: An append-only log data structure with consumer group support, providing Event Streaming capabilities similar to Apache Kafka or Amazon Kinesis

| **Requirement / Pattern**        | **ElastiCache for Redis**            | **ElastiCache for Memcached**                    |
| -------------------------------- | ------------------------------------ | ------------------------------------------------ |
| **Data Structures Required**     | **Yes** (Hashes, Sets, Lists, ZSETS) | ❌ No (Strings / Objects only)                    |
| **High Availability & Failover** | **Yes** (Multi-AZ with Replicas)     | ❌ No (Ephemeral Nodes)                           |
| **Multithreaded Compute**        | Limited (Multi-threaded I/O only)    | **Yes** (Scales vertically across all CPU cores) |
| **Message Queue / Pub-Sub**      | **Yes**                              | ❌ No                                             |
| **Backup & Restore to S3**       | **Yes**                              | ❌ No                                             |