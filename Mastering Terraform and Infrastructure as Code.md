![[mastering-terraform-slides.pdf]]


## What is infrastructure as code?
- Provisioning and managing infrastructure via codes instead of manually
	- Declarative (rather than imperative) Code = what do you want the outcome to be?
	- Codify and replicate as needed
	- Allows for versioning
![[Pasted image 20260923171229.png]]

## Benefits of Infrastructure as Code
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



