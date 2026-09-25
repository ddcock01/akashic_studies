![[mastering-terraform-slides.pdf]]


## What is infrastructure as code?
- Provisioning and managing infrastructure via codes instead of manually
	- Declarative (rather than imperative) Code = what do you want the outcome to be?
	- Codify and replicate as needed
	- Allows for versioning
![[Pasted image 20260923171229.png]]

## Benefits of Infrastructure as Code

![[Pasted image 20260925071632.png]]
### Better cost management
- Resources, environments, and complex infrastructures can be easily created and destroyed.
	- Just give the command
		-e.g. : terraform apply and/or terraform destroy
	- Still stored as code
- Automation considerably frees up the time of developers and infrastructure maintainers

### Improved Reliability
- Guarantee a consistent behavior
- Multiple ways of deploying configurations

### Improved consistency & Scalability
- easily copied and deployed of the same structure = reproducibility
- modules can be made public or private

### Improved deployment process
- Automation saves time and effort when deploying infrastructure
- Prevents configuration drift by identifying and reverting unexpected changes
- Creating, updating and destroying resources becomes fully integrated

### Fewer Human Errors
- Planning stage shows all the changes that are expected to be carried out and can be inspected by the engineers
- Connecting and integrating different resources becomes more intuitive due to develop-friendly identifiers
- Process of Infrastructure as code is imperative
	- depends on the order of operations
	- If a human manually runs code out of order, it will fail preventing errors in structure.

### Improved Security Strategies
- Validation and integrity checks can be used to ensure the infrastructure complies with security requirements.
- Shared infrastructure modules are normally maintained by teams with a strong focus on securing infrastructure

### Self documenting infrastructure


## Why Terraform

![[Pasted image 20260925071701.png]]

## Terraform's Architecture

- Terraform providers allow Terraform to know how to interact with remote APIs.
- Providers provide the logic to interact with upstream APIs
	- Read, create, update, and delete resources through their APIs
![[Pasted image 20260925072335.png]]

## Provisioning Infrastructure

1. Plan
	- State: in code the blueprint of the infrastructure
	- Providers; contact 
	- Plan
2. Apply
	- Plan
	- Providers
	- State
3. Destroy
	- State what is to be destroyed
	- Providers: contacts providers to delete real-world objects

![[Pasted image 20260925073234.png]]

## Terraform Stages
1. *Terraform Init*: initialize your working directory; preparing it for other Terraform commands.
2. *Terraform Plan*: commands Terraform to acknowledge the plan of execution and the actions that are necessary to achieve the desired state specified in your configuration files.
3. *Terraform Apply*: Once the plan has been review, this command will make the necessary actions to reach the desired state of your configuration.
4. *Terraform Destroy*: Deletes/removes all resources created by Terraform configurations when it's no longer needed
