[[AWS CloudTrail]] a service that focuses on governance, compliance, operational auditing, and risk auditing capabilities of AWS accounts. Where [[AWS Config]] tracks resource configuration history, [[AWS CloudTrail]] records who did what to which resource and when - taking a snapshot of API Calls made in an AWS environment.

# Problems Solved
- *Security Auditing & Incident Reponses*: pipoints security breaches or unauthorized activity by recording user identity, IP address, request parameters, and response elements
- *Account Transparency*: Complete audit trail of actions taken via the [[AWS Management Console]] , [[AWS SDKs]], [[Command Line Interface (CLI)]], and high-level AWS services
- *Compliance Enforcement*: Helps satisfy compliance regulations (e.g. HIPAA) by maintaining non- repudiable logs of account activity over time.

# Core/Sub Features 
- *Management Events via Event History*: Captures control plane operations performed on resources within AWS account by default for 90 days via *Event History*.
- *Data Events*: captures high-volume, resource-level data plane operations:
	- [[Amazon Simple Storage Service (S3)]] Object-level API operations
	- attaching [[AWS Identity and Access Management (IAM)]] policy
	- Deleting [[Amazon DynamoDB]] tables
		- **Disabled by default due to volume and logging cost
- *Organization Trails*: Intgrates with AWS Organizations to log events for all member accounts centrally into a single [[Amazon Simple Storage Service (S3)]] bucket managed by the Payer/Management account
- *CloudTrail Insights*: Uses machine learning to detect unusual operational patterns or spiking in API calls
	- e.g. a sudden spike in IAM privilege changes
	