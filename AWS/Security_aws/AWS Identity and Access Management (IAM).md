[[AWS Identity and Access Management (IAM)]] is a global service that is centered around identification and authorization.  

# Identity Structures
1.  IAM User: An actual person or application.
	- Includes long term credentials
		- Password
		- Access Keys: for programmatic CLI/API access
			- Access Key ID
			- Secret Access Key
2.  IAM Group: A collection of users
	- A policy is attached and associated with a list of individuals
	- the users/individuals inherit the permissions attached to their group.
		- Groups are NOT Identities
			- Cannot list a "Group" as a principal in a resource policy
3.  IAM Roles (The Dynamic Gold Standard)
	- A role is an identity with no password or static credentials
		- Uses temporary security credentials
			- dynamically generated via [[AWS Security Token Service (STS)]]
		- The Trust Policy: a JSON document
			- dictates who or what is allowed to "assume" the role
				- [[EC2 instances]]
				- [[Amazon Lambda]]
				- A user (same account or different)
		- The permission policy dictates what actions are allowed to be performed
		- **Always prefer Roles over Users for software execution.

# The Anatomy of an IAM Policy (JSON)

All permissions in AWS are written in JSON. Every policy contains one or more **Statements** with five core elements:

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "EnforceSecureS3Uploads",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::my-secure-data-bucket/*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      }
    }
  ]
}
```

1. **Sid (Statement ID):** An optional, user-defined label to describe the statement's purpose.
2. **Effect:** Either `Allow` or `Deny`.
3. **Principal:** The specific user, account, or role that is the target of the policy. _Crucial Exam Rule: Principal is ONLY used in resource-based policies (like S3 Bucket Policies or KMS Key Policies)_ _[1]__. It is NEVER included in identity-based policies attached directly to IAM users or roles because the identity itself is the implicit principal._
4. **Action:** The specific API calls being allowed or blocked (e.g., `s3:GetObject`, `ec2:RunInstances`).
5. **Resource:** The Amazon Resource Name (ARN) specifying the exact AWS objects the policy applies to.
6. **Condition:** The optional "gatekeeper" evaluated in real time. The policy only applies if the condition block resolves to true

# RBAC vs. ABAC
AWS provides two solutions to managing the permissions of thousands of resources and IAM policies for multiple different individuals.
1.  Role-Based Access Control (RBAC)
	- This works by defining roles with very specific jobs.
		E.g. BillingRole, DBAdminRole
2.  Attribute-Based Access Control (ABAC)
	- Define permsiions based on Tags attached to IAM Principal (user/role) and AWS Resources.
	- *Dynamic Match Rule*: a single generic IAM policy that allows an action only if the Principal's project tag matches the Resource's project tag.
	- *The scaling Benefit*: No need to continuously edit or make new policies
		- Tag the new developer role
	- Should only be used when both the resources and the principals reside with the same AWS Organization. If you allow external parties to access your account via ABAX, they could tag their own roles with your matching project tags and bypass security.

