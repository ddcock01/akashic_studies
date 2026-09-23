Provide reliable private connectivity to Amazon resources and services from [[VPC]] without using [[Public IPs]].
- Highly-available, redundant
- Horizontal scaling
- Routes through AWS owned-managed pathways.
- Eliminate the need for [[Internet Gateway]], [[Nat Gateway]], [[Public IP Address]], or [[Virtual Private Gateway]] to access AWS regional services
## Types of Endpoints
1.  [[AWS Private Link (Interface Endpoint)]]
2. [[Gateway Endpoint]]

|Metric / Scenario|Gateway Endpoints|Interface Endpoints (PrivateLink)|
|---|---|---|
|**Supported Services**|Amazon S3 & DynamoDB _only_|Over 50+ AWS services, partner services, & Marketplace|
|**Cost**|**Free** (No hourly or per-GB charges)|Paid (Hourly fee + per-GB data processing)|
|**VPC Configuration**|Must edit subnet Route Tables|Must configure Security Groups on the ENI|
|**Access from On-Premises**|❌ **No.** On-premises routers cannot route to a VPC route table target.|**Yes.** On-premises resources can resolve and route directly to the ENI's private IP.|
## Troubleshooting
- check [[subnet]] [[Route Tables]] and ensure [[DNS]] resolution settings are enabled in your [[VPC]]
# Cost
 cost is incurred during data processing and attachment charges.