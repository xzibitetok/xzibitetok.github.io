# 🌱 EcoStream Energy — AWS Cloud Infrastructure & Data Analytics

> A practical AWS cloud engineering project covering object storage, NoSQL data ingestion and querying, custom machine images, and a networked web application.

This project documents the implementation in the same order as the five step-by-step guides: **S3 Bucket → DynamoDB → Query Validation → Amazon Machine Image → Networking and Web Application**.

Each implementation section keeps the technical wording and sequence from its guide and places the matching visual evidence directly after the relevant step. The screenshots use the filenames shown in the repository's `visualizations/` folder.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Objectives](#project-objectives)
3. [Business Context and Assessment Tasks](#business-context-and-assessment-tasks)
4. [Dataset and Query Results](#dataset-and-query-results)
5. [Technology Stack](#technology-stack)
6. [Objective 1 — Amazon S3 Bucket Setup](#objective-1--amazon-s3-bucket-setup)
7. [Objective 2 — DynamoDB Table and S3 Import](#objective-2--dynamodb-table-and-s3-import)
8. [Objective 3 — DynamoDB Query Validation](#objective-3--dynamodb-query-validation)
9. [Objective 4 — Custom Amazon Machine Image and Nodejs Validation](#objective-4--custom-amazon-machine-image-and-nodejs-validation)
10. [Objective 5 — Networking and Web Application](#objective-5--networking-and-web-application)
11. [Key Outcomes](#key-outcomes)
12. [Repository Structure](#repository-structure)
13. [Reproducibility and Notes](#reproducibility-and-notes)
14. [References](#references)
15. [Author](#author)

---

## Project Overview

EcoStream Energy is a multinational renewable energy provider exploring Amazon Web Services for cloud data storage, database querying, and application hosting. The supplied `energy-telemetry-2025-2026-dbjson` dataset contains information on energy output and maintenance history for 2025 and 2026.

The project demonstrates a workflow using Amazon S3 to store the telemetry dataset, Amazon DynamoDB to import and query the data, EC2 and a custom Amazon Machine Image (AMI) to validate a Node.js environment, and a custom Virtual Private Cloud (VPC) with an Apache-hosted web application.

## Project Objectives

The project is organised around the five implementation guides:

1. **S3 Bucket:** Create and configure the `23122931-ecostream-energy-bucket` bucket, document the settings selected to improve the bucket, and upload the supplied telemetry dataset.
2. **DynamoDB:** Use the data stored in S3 to create the `23122931-ecostream-telemetry-db` DynamoDB table and document the table configuration and import settings.
3. **Query Validation:** Use DynamoDB Scan/Query functionality to perform the five required checks, export each result as CSV, and upload the result files to the S3 bucket.
4. **Amazon Machine Image:** Create a reusable custom AMI from an Ubuntu EC2 instance, install Node.js, launch a validation instance from the image, and verify that Node.js works.
5. **Networking and Web Application:** Create the EcoStream VPC and its network resources, launch an EC2 instance, and configure and validate an Apache-hosted web application.

## Business Context and Assessment Tasks

The five implementation goals correspond to the five step-by-step guides supplied for the project:

- Configure secure cloud object storage for the EcoStream telemetry data.
- Import the stored dataset into DynamoDB.
- Validate five business queries and save the results as CSV files.
- Create and test a reusable EC2 machine image containing Node.js.
- Configure the VPC and deploy a publicly accessible web application.

## Dataset and Query Results

### Source dataset

- `data/energy-telemetry-2025-2026-dbjson.json` — the telemetry dataset used for S3 storage and DynamoDB import.

### Query result files

The query guide specifies five CSV exports. The release assets currently show these filenames; if the files in `query-results/` use the same names, the links below will work as written.

- `query-results/23122931query1.csv.csv`
- `query-results/23122931query2.csv.csv`
- `query-results/23122931query3.csv.csv`
- `query-results/23122931query4.csv.csv`
- `query-results/23122931query5.csv.csv`

## Technology Stack

- **Amazon S3** — object storage for the telemetry dataset and exported query results.
- **Amazon DynamoDB** — NoSQL table creation, data import, and query/filter validation.
- **Amazon EC2** — template instance, AMI creation, validation instance, and web-server host.
- **Amazon Machine Image (AMI)** — reusable image containing the Node.js environment.
- **Amazon VPC** — virtual networking, subnets, route tables, and internet connectivity.
- **Apache HTTP Server** — web application delivery.
- **Ubuntu Linux and Node.js** — software environment and validation.
- **GitHub Markdown** — project documentation and visual evidence.

---

## Objective 1 — Amazon S3 Bucket Setup

**Guide title:** *23122931 S3 Bucket Step-by-Step Guide*

### Introduction

This document guides you through creating and configuring the Amazon S3 bucket needed for the EcoStream Energy cloud storage solution. The guide describes how to create the bucket “23122931-ecostream-energy-bucket” in Amazon Web Services (AWS), including the settings applied to make secure and reliable cloud-based data storage possible.

The page also displays the successful upload of the given telemetry collection into the S3 bucket for future database integration and querying. The tutorial includes relevant screenshots and configuration explanations throughout to help EcoStream staff with limited expertise of cloud computing to successfully repeat the setup process.

### Step 1 — Open the Amazon S3 service

After successfully entering the AWS Management Console from the learner lab environment, the AWS search bar was utilized to search for “S3”. Then I selected the Amazon S3 service under category “Services” to start the configuration of the cloud storage bucket needed to store the EcoStream telemetry data provided in the assessment resource.

This step was an important step as Amazon S3 provides scalable object storage, which would later be utilized to store the “energy-telemetry-2025-2026-dbjson” dataset before integrating it with DynamoDB for querying and analysis.

![S3 Step 1 — Open the S3 service](visualizations/Q1A_S3_01.png)

### Step 2 — Configure the bucket

To set up the cloud storage environment required for the EcoStream dataset, the Amazon S3 bucket creation page was opened from the S3 service dashboard. In the “General configuration” section, the AWS Region “US East (N. Virginia) us-east-1” was kept so that it would be the same as that utilized across the assessment brief.

The “General purpose” bucket type was chosen because it is suitable for common cloud storage operations and offers high availability across many Availability Zones. The bucket name “23122931-ecostream-energy-bucket” is given in the assessment brief.

The default “ACLs disabled” object ownership setting was retained to simplify access management using bucket policies instead of legacy access control lists. Furthermore, the “Block all public access” setting was still enabled to increase the security of the bucket and prevent unauthorised public access to the stored telemetry dataset.

The “bucket versioning” was disabled because the assessment did not require the ability to save multiple object versions, only required the fundamental dataset storage feature. For the encryption settings, the default server-side encryption option “SSE-S3” was kept to automatically encrypt all uploaded files stored in the bucket using Amazon S3-managed encryption keys.

These parameters were chosen to establish a secure, well designed and cost effective cloud storage environment for the EcoStream telemetry dataset in line with AWS best security practices.

![S3 Step 2 — Bucket configuration](visualizations/Q1A_S3_02.png)

![S3 Step 2 — Bucket configuration evidence](visualizations/Q1A_S3_03.png)

![S3 Step 2 — Bucket configuration evidence](visualizations/Q1A_S3_04.png)

![S3 Step 2 — Bucket configuration evidence](visualizations/Q1A_S3_05.png)

### Step 3 — Create the bucket and upload the dataset

After setting up the bucket configuration, the option “Create bucket” was selected to deploy the storage bucket. AWS successfully created the bucket “23122931-ecostream-energy-bucket”. And the bucket dashboard opened automatically.

The bucket interface had the Objects, Properties, Permissions, Metrics, and Management tabs proving the successful provisioning of the storage environment ready to store data. This phase verified that the S3 bucket infrastructure required for the evaluation has been successfully set up.

The “Upload” option inside the S3 bucket dashboard was selected to upload the EcoStream telemetry dataset into the newly created storage bucket. The dataset file “energy-telemetry-2025-2026-dbjson” was uploaded successfully into the bucket storage environment.

The upload status screen indicated that the upload was completed successfully and no mistakes were detected. The uploaded file was listed in the files and folders area with its file type and storage size, which signified that the dataset was successfully stored in the Amazon S3 bucket. This step was necessary because according to the assessment brief, the telemetry dataset has to be saved in Amazon S3 first, and then imported into DynamoDB for database analysis and querying operations.

![S3 Step 3 — Bucket creation and upload](visualizations/Q1A_S3_06.png)

![S3 Step 3 — Upload evidence](visualizations/Q1A_S3_07.png)

![S3 Step 3 — Upload evidence](visualizations/Q1A_S3_08.png)

![S3 Step 3 — Upload evidence](visualizations/Q1A_S3_09.png)

**Download the full step-by-step guide:** [S3 Bucket Guide (PDF)](documentation/S3_Bucket_Guide.pdf)

---

## Objective 2 — DynamoDB Table and S3 Import

**Guide title:** *23122931 DynamoDB Step-by-Step Guide*

### Introduction

Having completed the S3 bucket configuration and uploaded the dataset, the AWS Management Console was used to configure a DynamoDB table and import the EcoStream telemetry dataset from Amazon S3. The guide records the import settings and the checks used to confirm that the process completed successfully.

### Step 1 — Open DynamoDB

Having completed the S3 bucket configuration and uploaded the dataset, the AWS Management Console was used to open DynamoDB and begin the data import workflow.

![DynamoDB Step 1](visualizations/Q1A_DynamoDB_01.png)

### Step 2 — Select the S3 source

The S3 bucket containing the EcoStream telemetry dataset was selected using the DynamoDB import-from-S3 workflow.

![DynamoDB Step 2](visualizations/Q1A_DynamoDB_02.png)

### Step 3 — Configure the DynamoDB table

The DynamoDB table configuration page was completed by specifying the table details for the EcoStream telemetry data.

![DynamoDB Step 3](visualizations/Q1A_DynamoDB_03.png)

![DynamoDB Step 3 — Configuration evidence](visualizations/Q1A_DynamoDB_04.png)

### Step 4 — Review table settings

The DynamoDB table settings configuration page was opened to review the default and selected settings.

![DynamoDB Step 4](visualizations/Q1A_DynamoDB_05.png)

### Step 5 — Review the import configuration

The final review page was opened to verify all DynamoDB import configurations before submitting the import job.

![DynamoDB Step 5](visualizations/Q1A_DynamoDB_06.png)

### Step 6 — Verify the import

The DynamoDB Imports from S3 dashboard confirmed that the import process for the dataset had been submitted and its status could be checked.

![DynamoDB Step 6](visualizations/Q1A_DynamoDB_07.png)

![DynamoDB Step 6 — Import evidence](visualizations/Q1A_DynamoDB_08.png)

### Step 7 — Verify the S3 source file

The Amazon S3 bucket page was revisited to verify that the uploaded telemetry dataset remained available as the import source.

![DynamoDB Step 7](visualizations/Q1A_DynamoDB_09.png)

**Download the full step-by-step guide:** [DynamoDB Guide (PDF)](documentation/DynamoDB_Guide.pdf)

---

## Objective 3 — DynamoDB Query Validation

**Guide title:** *23122931 Query Validation*

### Introduction

Using the Scan/Query functionality of the DynamoDB table, the project checks whether five requested business queries can be undertaken. The results for each query are downloaded as CSV files and uploaded to the S3 bucket.

### Step 1 — Open DynamoDB

Go to the AWS Console dashboard and open the DynamoDB service.

![Query Validation Step 1](visualizations/Q1B_Query_Validation_01.png)

### Step 2 — Open Explore items

Navigate to the Explore items area in the DynamoDB navigation panel and choose the EcoStream telemetry table.

![Query Validation Step 2](visualizations/Q1B_Query_Validation_02.png)

### Step 3 — Run the five queries

#### Query 1: Return all data for facilities that had no maintenance incidents in 2024 but at least one maintenance incident in 2025.

The filter logic uses the maintenance incident attributes for 2024 and 2025 to identify facilities with no incidents in 2024 and at least one incident in 2025. After clicking Run, the query result is exported as a CSV file by selecting the Actions dropdown and choosing Download results to CSV. The downloaded file was then renamed to “23122931query1.csv.”

![Query 1 — Query configuration and result](visualizations/Q1B_Query_Validation_03.png)

#### Query 2: Return Facility ID and Country for facilities with Energy Output less than 50,000 MWh in 2025.

To identify facilities with low energy production in 2025, the attribute projection was set to “Specific attributes” because only “Facility ID” and “Country” were required in the result. The attribute name “Energy Output 2025 (MWh)” was selected. The “Less than” condition with a value of “50000” was applied. The “Number” type was selected because energy output values are numeric. The downloaded file was then renamed to “23122931query2.csv.”

![Query 2 — Query configuration and result](visualizations/Q1B_Query_Validation_04.png)

#### Query 3: Return Facility ID for facilities with a Wind type on the High-Performance tier.

The attribute projection was set to “Specific attributes” because only the “Facility ID” was required in the output. Two filters were used: “Facility Type” equal to “Wind” and “Operational Tier” equal to “High-Performance”. The “String” type was selected because the values are text-based. The downloaded file was then renamed to “23122931query3.csv.”

![Query 3 — Query configuration and result](visualizations/Q1B_Query_Validation_05.png)

#### Query 4: Return all data for facilities that have an Energy Output greater than 100,000 MWh for both 2024 and 2025.

The attribute projection was set to “All attributes” because the requirement requested complete facility records. Two filters were applied to compare energy output values for both 2024 and 2025. The “Greater than” condition with a value of “100000” was used in both filters. The downloaded file was then renamed to “23122931query4.csv.”

![Query 4 — Query configuration and result](visualizations/Q1B_Query_Validation_06.png)

#### Query 5: Identify facilities with impossible downtime hours for 2024 data.

The attribute projection was set to “All attributes” because the requirement requested complete facility data. The attribute name “Downtime Hours 2024” was selected. A full year contains “8760 hours (365 × 24)”; any value above 8,760 hours is considered impossible. The condition “Greater than” with a value of “8760” was used to identify such records. The downloaded file was then renamed to “23122931query5.csv.”

![Query 5 — Query configuration and result](visualizations/Q1B_Query_Validation_07.png)

### Step 4 — Upload the five query results to S3

Navigate to the S3 bucket “23122931-ecostream-energy-bucket” and upload all five downloaded CSV files obtained from the five queries.

![Upload query results to S3](visualizations/Q1B_Query_Validation_08.png)

![Verify query result upload](visualizations/Q1B_Query_Validation_09.png)

**Download the full step-by-step guide:** [Query Validation Guide (PDF)](documentation/Query_Validation.pdf)

---

## Objective 4 — Custom Amazon Machine Image and Node.js Validation

**Guide title:** *23122931 Amazon Machine Image Step-by-Step Guide*

### Introduction

This document presents a step-by-step method for creating and validating a custom Amazon Machine Image for EcoStream Energy using Amazon EC2 services. The guide explains how a typical Ubuntu Linux EC2 instance was set up as a template server, how to manually install the Node.js programming environment, and how the configured instance was turned into a reusable custom AMI.

It also details how the AMI was validated by creating a second EC2 instance from the modified image and running Node.js commands to verify that the software installation was retained in the AMI.

### Step 1 — Open EC2

The AWS search menu was used to locate and open the EC2 service in the AWS Management Console. The EC2 dashboard was opened successfully, displaying the available EC2 resources and the Launch Instance option.

![AMI Step 1](visualizations/Q2A_AMI_01.png)

### Step 2 — Configure the template instance

The instance was named `23122931-ec2-template-instance`. The latest Ubuntu Linux AMI was selected with a 64-bit specification, and the instance type was set to `t3.nano`.

![AMI Step 2](visualizations/Q2A_AMI_02.png)

### Step 3 — Create a key pair

A new RSA key pair named `23122931-keypair` was created and configured in `.pem` format to enable secure SSH access to the EC2 instance. The created key pair was successfully attached to the EC2 instance configuration.

![AMI Step 3](visualizations/Q2A_AMI_03.png)

### Step 4 — Configure security and storage

The network security group and storage settings were configured for the EC2 instance. SSH traffic was enabled to support secure remote access, and the storage volume was configured with 12 GiB of gp3 storage, as required in the brief.

![AMI Step 4](visualizations/Q2A_AMI_04.png)

### Step 5 — Launch the template instance

The EC2 template instance was launched successfully, and the AWS launch log confirmed that the instance initialization, security groups, and security group rules were created successfully.

![AMI Step 5](visualizations/Q2A_AMI_05.png)

### Step 6 — Start creating the AMI

The AWS EC2 Dashboard was opened, and the previously created template instance named `23122931-ec2-template-instance` was selected. The navigation path was **Actions → Image and templates → Create image**.

![AMI Step 6](visualizations/Q2A_AMI_06.png)

### Step 7 — Configure and create the custom AMI

The AMI configuration page was completed to create a reusable machine image from the running EC2 template instance. The image name was set to `23122931-nodejs-ami`, and the image description was updated to indicate that the AMI included pre-installed Node.js.

The Reboot instance option remained enabled to ensure consistency during snapshot creation; the storage configuration was set to 12 GB of GP3 storage; and the option to “tag image and snapshots together” was selected.

![AMI Step 7](visualizations/Q2A_AMI_07.png)

![AMI Step 7 — Configuration evidence](visualizations/Q2A_AMI_08.png)

### Step 8 — Verify the AMI

From the EC2 navigation panel, the Images section was expanded, and AMIs were selected. The Private images category displayed the reusable custom AMIs created within the account. The status of `23122931-nodejs-ami` was confirmed as Available.

![AMI Step 8](visualizations/Q2A_AMI_09.png)

### Step 9 — Configure a validation instance

On the launch configuration page, the instance name was set to `23122931-ecostream-nodejs-instance`. The previously created reusable AMI containing Node.js was attached as the software image for the new EC2 instance.

![AMI Step 9](visualizations/Q2A_AMI_10.png)

### Step 10 — Review network settings

While configuring the validation EC2 instance, the Network settings section was reviewed, and a new security group was selected within the firewall configuration. Since validation was performed via the AWS browser-based EC2 Instance Connect terminal, the “Proceed without key pair” option was selected.

![AMI Step 10](visualizations/Q2A_AMI_11.png)

### Step 11 — Launch the validation instance

After completing the launch configuration, the Launch instance button was selected to deploy the new EC2 validation instance from the reusable Node.js AMI.

![AMI Step 11](visualizations/Q2A_AMI_12.png)

### Step 12 — Verify running instances

The Instances section was used to verify the status of both EC2 instances. The original template instance and the newly launched validation instance were displayed as Running instances.

![AMI Step 12](visualizations/Q2A_AMI_13.png)

### Step 13 — Connect to the validation instance

On the connection page, the EC2 Instance Connect tab was selected to establish a browser-based terminal connection. The “Connect using a Public IP” option remained selected.

![AMI Step 13](visualizations/Q2A_AMI_14.png)

### Step 14 — Open the terminal

After selecting Connect, a browser-based terminal session was successfully opened for the validation instance. The terminal displayed Ubuntu operating system information and the root command prompt.

![AMI Step 14](visualizations/Q2A_AMI_15.png)

### Step 15 — Update package information

The command `sudo apt update` was used to refresh the package index and retrieve the latest available information about software packages from the Ubuntu repositories.

![AMI Step 15](visualizations/Q2A_AMI_16.png)

### Step 16 — Install Node.js

The command `sudo apt install nodejs -y` was used to install Node.js and its dependencies on the EC2 validation instance.

![AMI Step 16](visualizations/Q2A_AMI_17.png)

### Step 17 — Verify the Node.js version

The command `node -v` was used to verify that Node.js had been successfully installed. The terminal output displayed Node.js version `v22.22.1`.

![AMI Step 17](visualizations/Q2A_AMI_18.png)

### Step 18 — Run the Node.js validation script

The command `node 23122931_script.js` was used to run the validation file. The terminal output displayed: `23122931, NodeJS has been installed successfully for EcoStream!`

![AMI Step 18](visualizations/Q2A_AMI_19.png)

### Step 19 — Create an additional backup image

After successfully validating Node.js, the validation instance was selected and **Actions → Image and templates → Create image** was used to begin creating an additional backup AMI.

![AMI Step 19](visualizations/Q2A_AMI_20.png)

### Step 20 — Resolve the duplicate AMI name

The initial AMI name `23122931-nodejs-ami` was already associated with an existing AMI. The name was therefore changed to `23122931-nodejs-ami-final`. The Reboot instance option remained selected and the default 12 GB storage volume settings were retained.

![AMI Step 20](visualizations/Q2A_AMI_21.png)

### Steps 21–24 — Confirm image creation and termination protection

The remaining guide steps record the image-creation confirmation, checking the AMI/instance state, and enabling termination protection for the validation instance.

![AMI Step 21](visualizations/Q2A_AMI_22.png)

![AMI Step 22](visualizations/Q2A_AMI_23.png)

![AMI Step 23](visualizations/Q2A_AMI_24.png)

![AMI Step 24](visualizations/Q2A_AMI_25.png)

![AMI additional evidence](visualizations/Q2A_AMI_26.png)

![AMI additional evidence](visualizations/Q2A_AMI_27.png)

![AMI additional evidence](visualizations/Q2A_AMI_28.png)

![AMI additional evidence](visualizations/Q2A_AMI_29.png)

![AMI additional evidence](visualizations/Q2A_AMI_30.png)

**Download the full step-by-step guide:** [Amazon Machine Image Guide (PDF)](documentation/Amazon_Machine_Image_Guide.pdf)

---

## Objective 5 — Networking and Web Application

**Guide title:** *23122931 Networking and Web Application Step-by-Step Guide*

### Introduction

This document describes how to set up the networking and web application for the EcoStream Energy cloud environment using Amazon Web Services. This guide shows how to create a custom Virtual Private Cloud named `23122931-ecostream-vpc` with its public and private subnets, route tables, and internet connectivity settings.

The document further discusses setting up an EC2 instance in the defined VPC environment and configuring it as a web application server accessible publicly via the Apache HTTP Server. Relevant screenshots, configuration settings, terminal commands, and validation outputs are provided to enable EcoStream staff to follow along and successfully reproduce the networking and web application deployment.

### Step 1 — Open the VPC service

The AWS search bar was used to search for “VPC”, and the VPC service under the Services category was selected to begin configuring the networking infrastructure required for the EcoStream environment. The VPC Dashboard was opened successfully. From the dashboard, the “Create VPC” option was selected.

![Networking Step 1](visualizations/Q2B_Networking_Web_01.png)

### Step 2 — Configure the VPC

The VPC configuration page was completed by selecting the “VPC and more” option, which automatically creates the networking resources required for the EcoStream environment. The VPC was named `23122931-ecostream-vpc` with an IPv4 CIDR block of `10.0.0.0/16`, while the default tenancy and no IPv6 option were retained.

![Networking Step 2](visualizations/Q2B_Networking_Web_02.png)

### Step 3 — Verify VPC deployment

The VPC deployment workflow page confirmed that the EcoStream Virtual Private Cloud and its requested network resources were created.

![Networking Step 3](visualizations/Q2B_Networking_Web_03.png)

### Step 4 — Open EC2

After completing the VPC configuration, the AWS search bar was used to locate the EC2 service to begin creating the web application host.

![Networking Step 4](visualizations/Q2B_Networking_Web_04.png)

### Step 5 — Launch an EC2 instance

The EC2 instance creation process was started by selecting “Launch Instance” and configuring the instance for the EcoStream web application.

![Networking Step 5](visualizations/Q2B_Networking_Web_05.png)

![Networking Step 5 — Launch configuration evidence](visualizations/Q2B_Networking_Web_06.png)

### Step 6 — Verify the instance

After the EC2 instance was launched, the Instances page was opened to verify that the instance was running.

![Networking Step 6](visualizations/Q2B_Networking_Web_07.png)

### Step 7 — Connect to the instance

The EC2 Instance Connect terminal was successfully opened for the EcoStream instance.

![Networking Step 7](visualizations/Q2B_Networking_Web_08.png)

### Step 8 — Obtain administrator access

The EC2 terminal session was elevated to root administrator access using `sudo su`.

![Networking Step 8](visualizations/Q2B_Networking_Web_09.png)

### Step 9 — Install Apache HTTP Server

The Apache HTTP Server installation was initiated with the command `yum install -y httpd`.

![Networking Step 9](visualizations/Q2B_Networking_Web_10.png)

![Networking Step 9 — Installation evidence](visualizations/Q2B_Networking_Web_11.png)

### Step 10 — Create the welcome page

The command was used to write the EcoStream welcome message to the web server's page:

```bash
echo "Welcome 23122931! Welcome to EcoStream, the largest renewable energy provider in the world!" > /var/www/html/index.html
```

![Networking Step 10](visualizations/Q2B_Networking_Web_12.png)

### Step 11 — Configure Apache to start automatically

The Apache web server service was configured to automatically start whenever the EC2 instance boots.

![Networking Step 11](visualizations/Q2B_Networking_Web_13.png)

### Step 12 — Start Apache

The Apache web server was started using `systemctl start httpd`.

![Networking Step 12](visualizations/Q2B_Networking_Web_14.png)

### Step 13 — Verify Apache status

The status of the Apache web server was verified using `systemctl status httpd`.

![Networking Step 13](visualizations/Q2B_Networking_Web_15.png)

![Networking Step 13 — Service status evidence](visualizations/Q2B_Networking_Web_16.png)

### Step 14 — Verify the web application

The EC2 Instances page was accessed to verify the newly created EcoStream web server and its access details. The public endpoint was then used to check the deployed welcome page.

![Networking Step 14](visualizations/Q2B_Networking_Web_17.png)

![Networking web application evidence](visualizations/Q2B_Networking_Web_18.png)

![Networking web application evidence](visualizations/Q2B_Networking_Web_19.png)

![Networking web application evidence](visualizations/Q2B_Networking_Web_20.png)

![Networking web application evidence](visualizations/Q2B_Networking_Web_21.png)

![Networking web application evidence](visualizations/Q2B_Networking_Web_22.png)

![Networking web application evidence](visualizations/Q2B_Networking_Web_23.png)

**Download the full step-by-step guide:** [Networking and Web Application Guide (PDF)](documentation/Networking_Web_Application_Guide.pdf)

---

## Key Outcomes

- Created and configured an Amazon S3 bucket for the EcoStream telemetry dataset.
- Imported the dataset from S3 into DynamoDB.
- Documented and executed five DynamoDB query/filter checks and exported their results as CSV files.
- Created a custom AMI and validated Node.js on a second EC2 instance.
- Configured a custom VPC and deployed an Apache-hosted welcome page on EC2.

## Repository Structure

```text
ecostream-energy-aws-cloud/
├── code/
│   └── (project scripts and command reference, where applicable)
├── data/
│   └── energy-telemetry-2025-2026-dbjson.json
├── documentation/
│   ├── README.md
│   ├── S3_Bucket_Guide.pdf
│   ├── DynamoDB_Guide.pdf
│   ├── Query_Validation.pdf
│   ├── Amazon_Machine_Image_Guide.pdf
│   └── Networking_Web_Application_Guide.pdf
├── query-results/
│   ├── 23122931query1.csv.csv
│   ├── 23122931query2.csv.csv
│   ├── 23122931query3.csv.csv
│   ├── 23122931query4.csv.csv
│   └── 23122931query5.csv.csv
├── visualizations/
│   ├── Q1A_S3_01.png ... Q1A_S3_09.png
│   ├── Q1A_DynamoDB_01.png ... Q1A_DynamoDB_09.png
│   ├── Q1B_Query_Validation_01.png ... Q1B_Query_Validation_09.png
│   ├── Q2A_AMI_01.png ... Q2A_AMI_30.png
│   └── Q2B_Networking_Web_01.png ... Q2B_Networking_Web_23.png
└── README.md
```

## Reproducibility and Notes

- Follow the five objectives in order. The DynamoDB import depends on the dataset being available in S3 first.
- The query-validation objective follows the five business queries in the guide and documents the CSV export/upload workflow.
- The AMI objective includes creating the image, launching a validation instance, installing/verifying Node.js, and checking the resulting configuration.
- The networking objective covers the VPC and EC2 web-server workflow.
- AWS Academy Learner Lab resources may be temporary. Instance IDs, public IP addresses, and other runtime-generated values may differ when the steps are repeated.
- The documentation links at the end of each objective expect the PDF guides to be uploaded under the filenames shown in the `documentation/` folder tree. Rename the PDFs or update the links if you choose different filenames.
- Image paths are relative to this README and use the filenames shown in the supplied GitHub screenshots. If an image does not render, check that the file exists in `ecostream-energy-aws-cloud/visualizations/` and that the spelling and capitalisation match.

## References

- Amazon Web Services (AWS). *Amazon S3 User Guide*.
- Amazon Web Services (AWS). *Amazon DynamoDB Developer Guide*.
- Amazon Web Services (AWS). *Amazon EC2 User Guide*.
- Amazon Web Services (AWS). *Amazon VPC User Guide*.
- Amazon Web Services (AWS). *Amazon Linux and Ubuntu package management documentation*.

## Author

**Ubong Etok**

MSc Data Science | Cloud Engineering and Big Data Analytics

