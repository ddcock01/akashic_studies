[[AWS Config]] is a constant surveillance and compliance service that records, audits, and evaluates the configurations of your AWS resources over time. Tracks how resources are configured, how they change, and whether they comply with security rules.

# Problems Solved
- Configuration Drift & Shadow IT: Detects unauthorized or accidental configuration changes
- Compliance & Auditing: Provides a complete timeline and configuration history of resources for compliance frameworks
- Automatically corrects actions when resources fall out of compliance.

# Key/Sub-Features
- Managed & Custom Config Rules
	- Conducted by [[AWS Lambda]] , ensures that resources maintain homeostatic balance.
- Configuration History & Timeline:
	- Maintains detailed records of changes made to resources and infrastructure
		- details include
			- Who changed what
			- What configurations looked like before
- Auto-Remediation (via [[Systems Manager (SSM0)]])
	- Automatically fixes non-compliant resource configurations
- Multi-Account & Multi-Region Aggregation:
	- Integrates with [[AWS Organizations]] to centralize compliance across all accounts.

|**Service**|**What It Tracks**|**Example Question Trigger**|
|---|---|---|
|**AWS Config**|**Resource Configurations & Compliance** over time|_"Audit configuration drift / non-compliant resources"_|
|**AWS CloudTrail**|**API Calls & User Activity** (Who did what)|_"Determine who deleted an S3 bucket"_|
|**AWS CloudWatch**|**Performance Metrics, Logs, & Alarms**|_"Monitor CPU utilization or application error logs"_|

#aws 