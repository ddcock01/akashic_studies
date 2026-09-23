Is an AWS managed service for the creation and control of cryptographic keys used to protect the data residing inside of AWS services, custom applications, and infrastructure.
- Data-at-Rest Encryption: Automatically encrypts data stored across AWS services
	- [[Amazon Simple Storage Service (S3)]]
	- [[Amazon Elastic Block Storage (EBS)]]
	- [[AWS Secret Manager]]
	- [[Amazon Relational Database Service (RDS)]]
	- [[Amazon DynamoDB]]
- Encryption: creates and manages [[Data Encryption Keys DEKs]] , protected by KMS Key and [[AWS IAM]] Policies.
- Access Regulation & Governance: Control who and what can be accessed via cryptographic operations using KMS Key Policies and [[AWS IAM]] Policies.
- Compliance & Auditing: Integrates with [[AWS CloudTrail]] to log API calls to key
## Three Tiers of Keys
1. AWS Owned Keys (Free): Keys Created and managed by AWS to protect account; they can't be viewed, modified, or edited
2.  AWS Managed Keys (Free): Default, included with account when encryption is enabled.
3. Customer Managed Keys ($1/Month + API usage): User created, imported, and/or managed within KMS. Full control over Key Policies, IAM access delegation, and rotation. 
##Key Types: Symmetric vs. Asymmetric
- Symmetric Keys (AES-256): Single key for encryption and decryption. 
	- AWS services that rely on Symmetric Keys:
		- [[Amazon Elastic Block Storage (EBS)]]
		- [[Amazon Simple Storage Service (S3)]]
		- [[Amazon Relational Database Service (RDS)]]
		- [[AWS Secret Manager]]
	- Key never leaves AWS KMS infrastructure
- Asymmetric Keys (RSA & ECC  pairs): pair of keys
	- Public + Private key
		- Public: used to encrypt or Signatures 
			- Downloadable for external clients
		- private: decrypt or sign
			- remains within KMS HSM
	- Ideal for systems outside of AWS that need to encrypt data securely without needing direct access to the AWS KMS API

#domain1designsecurearchitecture #security 