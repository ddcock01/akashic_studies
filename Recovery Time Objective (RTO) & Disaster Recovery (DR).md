[[Disaster Recovery]] is an organization's overall business continuity strategy for anticipating, responding to and recovering from major disruptions such as natural disasters, regional power grid failures, massive infrastructure outages, or severe security incidents. The focus is restoring operational capability across an entire secondary region or environment after catastropic failure.

[[Recovery Time Objective (RTO)]] the maximum acceptable duration of time an application can remain offline following a disaster before financial, operational, or reputational losss occurs.
- Backup and Restore: No infrastructure running in DR region. Backups/snapshots copied over.
	- Lowest cost
- Pilot Light: Core database always 10-15 minutes on/replicating. Compute (EC2/Auto Scaling) is off or zero-scaled until failover. 
	- Low cost
- Warm Standby: Scaled-down core stack constantly running (e.g., 2 web instances instead of 20).
	- Medium cost
- Multi=Site Active-Active: Full production stack running live in both regions concurrently.
	- Highest Cost