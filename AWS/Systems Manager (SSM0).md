**

Operation hub designed to view, automate, and control AWS resources in the cloud and on-premises, at scale without manually logging into each instance.

  

Key Problem Solved

- Eliminates need to open port 22 (SSH) or port 3389 (RDP) to access servers.
    
- Automates OS updates and configuration using automated maintenance windows and compliance policies.
    
- Single dashboard to monitor installed software, OS versions, and patch levels across EC2 instances and hybrid/on-prem environments
    

Subfeatures

- System Manager Parameter Store: Secure storage service
    

- Configure data strings, database strings, and passwords
    
- Can store secret encrypted via [[AWS Key Management Service (KMS)]] (SecureString).
    
- Free standard tier (unlike Secrets Manager)
    

- Session Manager/Run Command: Enables shell/terminal access to EC2 instances directly from AWS Console or CLI without opening inbound SSH/RDP ports or requiring public IP address
    

- Commands span across thousands of instances simultaneously.
    
- SNS notification about command status
    

- System Manager Documents: Streamlines common operational workflows and administrative tasks using declarative playbooks.
    

- EX: Creating AMI, stopping non-productive EC2s
    

- State Manager: Maintains target configuration state across fleet.
    
- Systems Manager - Patch Manager: 
    

- Automates the process of patching managed instances
    
- OS updates, applications updates, security updates
    

- EC2 instances and on-premises
    
- On-Demand or with schedule using Maintenance Windows
    

- Systems Manager - Automation
    

- Automation Runbook
    

- SSM - Documents to define actions performed on your [[EC2 instances]] or AWS resources (pre-defined or custom)
    

- Triggered manually via [[AWS Console]] , [[AWS CLI]] or SDK
    
- [[Amazon Eventbridge]]
    
- On a schedule using Maintenance Windows
    
- By [[AWS Config]] for Rules remediations
    



**