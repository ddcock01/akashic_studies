**

Designed to manage, retrieve, and rotate sensitive credentials (like database passwords, API keys, and tokens) securely throughout their lifecycle.

- Eliminate the risk of storing plain-text passwords
	- API keys in source code
	- Configuration files
	- Environment variables
- Automates complex process of rotating credentials
	- Application redeployment not required
- Centralized access control using AWS IAM
	- Logs every secret access attempt, rotation, modification for compliance audits
- Secrets are always encrypted using [[AWS Key Management Service (KMS)]] 
### Sub features

- Multi-Region Secrets
	- Automatically repliacates secrets to multiple regions
		- Support multi-region application deployment
		- Disaster recover


#security #aws 