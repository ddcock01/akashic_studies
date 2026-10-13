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

### Note:
	Terraform files may contain credentials, you shouldn't have them uploaded to git for public access.
		Should I create a terraform branch for this material?
		Definitely include .gitignore

## [[Hashicorp configuration Language HCL]]
Written in files with a .tf suffix
- To insert 1 line comments use # 
- To insert multi line comments use /* to wrap your lines * / 
### Grammatical Structure Constructs and Structures
The fundamental grammar and syntax rules for writing Terraform configurations
- [*Blocks*](https://developer.hashicorp.com/terraform/language/block/terraform?page=terraform): Primary Structure Containers in [[Hashicorp Configuration Language (HCL)]] used to group configuration settings together using a block type, optional labels and {}. Blocks are built in hierarchical configurations for resources that contain sub-components.
- <u>Parent Block</u>: are top level blocks that define primary infrastructure objects. They come in a variety of forms:
	- <u>Resource</u> block: used to configure real-world infrastructure objects.
		- used to manage any infrastructure
		- most important block
		- combinations of resource type and name must be unique
		- If no other provider is specified, terraform will use the default provider to provision the infrastructure.
	- <u>provider</u> block: who's providing the resources?
			![[Pasted image 20261001100909.png]]


	- <u>data</u> block
	- <u>variable</u> block
	- <u>Terraform</u>: Configures plugins for specific cloud/services like AWS, GCP, or Azure.
		- Input variables or resource references are not allowed
		- Cloud block: used to configure Terraform Cloud
		- Backend block: used to configure a state backend for the project
		- Required_version key: used to specify the accepted versions of Terraform for the current project. Remember the following Version Constraints:
			- =: allows only the specified version.
			- !=: excludes an exact version.
			- >=, <=, >, <: allow versions for which the comparison is true.
			- ~>: allows only the rightmost digit to increment.
		- Required_providers block: specifies the required providers for the current project or module, including their accepted versions.
	- <u>module</u>
- <u>Nested (Child) Block Type</u>: A structural block defined inside another (Parent) block to group related configuration sub-settings together
	- Need 2 indent spaces for each nesting level
	- When multiple arguments with single-line values appear on consecutive lines at the same nesting level, align their qual signs
- *Attributes*: Key-value pairs declared inside blocks using the equal sign syntax ( key = value) to set configuration parameters.
- *Datatypes*: Literal value kinds supported by HCL, including primitive types:
	- string = ""
	- number
	- boolean
	- Complex/collection: List, map, set, object, tuple
- *Conditions*: ternary expressions ( condition ? true_value : false_value) used within attribute calues to dynamically decide configuration logic.
- *Functions*: built-in operations (like upper(), join(), max()) evaluated inside expressions to manipulate strings, collections, or perform calculations.
- *Resources*: Top-level block types used specifically by terraform to manage infrastructure components


## JSON Configuration Syntax
### JSON objects
	- The root of Terraform configuration for JSON-based Terraform
		- Objects = Block type configurations of Terraform Language
	
![[Pasted image 20260927094627.png]]

### Expression Mapping (JSON)
- JSON grammar is not able to represent all of the Terraform language and therefore JSON values are interpreted as expressions mapped as follows:

|JSON|Terraform Language Interpretation|
|---|---|
|Boolean|A literal `bool` value.|
|Number|A literal `number` value.|
|String|Parsed as a [string template](https://developer.hashicorp.com/terraform/language/expressions/strings#string-templates) and then evaluated as described below.|
|Object|Each property value is mapped per this table, producing an `object(...)` value with suitable attribute types.|
|Array|Each element is mapped per this table, producing a `tuple(...)` value with suitable element types.|
|Null|A literal `null`.|
## Coding Format
Follow these style conventions for consistency between files and modules:
- Indent two spaces for each nesting level
- When multiple arguments with single-line values appear on consecutive lines as the same nesting level, align their equals signs
- When both arguments and blocks are inside a block body together:
	- Place all arguments together up top
	- 1 blank line in between
	- Nested blocks go under the arguments, after the blank line
	- For blocks with both arguments and "meta-arguments":
		- list meta-arguments first
		- Blank line between arguments
		- Meta-argument blocks go last and are separated from other blocks with one blank line.
- Top-level blocks are always separated from one another by one blank line. 
- Nested blocks should also be separated by blank lines
	- EXCEPT when grouping together related blocks of the same type.
- Don't group multiple blocks of the same type with other blocks of a different type, unless the block types are defined by semantics to form a family.
	- Family of block types can be mixed in together because in concert they contribute to the samae underlying feature within a parent resource.
			- e.g root_block_device + ebs_block_device and ephemeral_block_device on = aws_instance form of family of block types

| Commands             |                                                                                                                                                           |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| terraform fmt        | formats Terraform configuration to a subset  of preferred coding style                                                                                    |
| terraform show       | creates human-readable output from a state or plan file. It's used to inspect the current state or to see the actions planned by a terraform plan command |
| terraform state list | Lists all resources in the state file, useful for managing and manipulating the state                                                                     |
| terraform -help      | Provices help information about Terraform commands. It can be used alone for a general overview, or appended to a speciic command for detailed help.      |
| terraform version    |                                                                                                                                                           |
## File Naming Conventions

| File names   | Contents                                                                                                                                                               |
| ------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| backend.tf   | contains backend configurations. Were multple terraform blocks are defined to separate the backend configuration from terraform and provider versioning configuration. |
| main.tf      | contains all resource and data source blocks                                                                                                                           |
| outputs.tf   | contains all output blocks in alphabetical order.                                                                                                                      |
| providers.tf | contains all provider blocks and configuration                                                                                                                         |
| terraform.tf | contains a single terraform block which defines your required_version and required_providers                                                                           |
| variables.tf | contains all viaable blocks in alphabetical order                                                                                                                      |
| locals.tf    | contains local values                                                                                                                                                  |
|              |                                                                                                                                                                        |
## Terraform State
Maps resources from the configuration to real-world objects
- Backened configurations
- Outputs
- Sensitive values
	- <font color="#c00000">DON'T EXPOSE THEM TO THE PUBLIC</font>
		- This is where the .gitignore file comes in
- Terraform can't work without a state file

## [Backends](https://developer.hashicorp.com/terraform/language/backend) 
where terraform stores its state file
- local: the state file is stored in the user's local machine
- Terraform cloud/ offers additional features. (Cloud as capabilities)
- Third-party remote backends: state file is stored in a remote backend other than Terraform Cloud
	- S3
	- Google Cloud Storage
- Only 1 backend allowed
- Remote backends require authentication credentials in order for Terraform to properly access the files
- Backend block cannot use any input variables, resources references, and data sources
- Terraform offers the possibility of migrating state between different backends.
![[Pasted image 20261001100831.png]]

### Partial Configurations
- Instead of putting everything in a block format you have 2 options
	1.  You can include the configuration details in a file instead.
	2. You can include configurations in the [[Command Line Interface (CLI)]]


### Resource Dependencies
Specific resources can be created simultaneously, other resources depend on each other and need to be created sequentially. 
- Terraform supports both parallel and sequential management of resources
- Terraform can inspect expressions to automatically establish implicit dependencies between resources
- Define explicit dependencies using depends_on meta-argument
- In a sequential based organizing of resources, if an upstream resource fails, Terraform will stop operations on downstream resources.
- Force Terraform to replace a parent resource in a case a child resource is modified by using the replace_triggered_by meta-argument.

### Meta-Arguments
![[Pasted image 20261001215330.png]]

### Dependency Graph

Order of lines in coding doesn't dictate what resource is created. When you run 'terraform plan', the terraform plan creates a Dependency Graph based on analyzing the code for implicit or explicit dependencies. 
- If no implicit or explicit dependencies are detected, every resource will be created in parallel, independently.
- If implicit or explicit dependencies are detected, terraform will make note in it's Dependency Graph to create a sequential ordering for the (inter)dependent resources.
	- implicit dependencies are automatically detected through the terraform planning phase.
	- Explicit dependencies must be acknowledged with the 'depends_on' meta-arguement


### Tips & Tricks
Ctrl + / = comment out code; Terraform will ignore.

### Data Sources
![[Pasted image 20261006074411.png]]

This would be great for Fittest Fitness accessing the wearables.

With data block sources keep in mind that data.aws_iam_policy_document does NOT query information. Instead it provide information!!!
- Utilized for generating JSON policies using Terraform/HCL, raw multi-line strings
	- error-prone
	- complete with comments and variable interpolations

### Input Variables
Customize values based on variables to create reusable and composable code

![[Pasted image 20261010074517.png]]