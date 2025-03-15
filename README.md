# Jenkins Test 1 Repository - Jenkinsfile-Centric Guide

## Overview

This guide provides a **step-by-step walkthrough** on setting up and running the **jenkins-test1** repository, focusing on the Jenkins pipeline as defined in the `Jenkinsfile`. This project integrates **Jenkins**, **Terraform**, and **AWS** to automate infrastructure deployment.

---

## Step 1: Clone the Repository

Begin by cloning the repository to your local machine:

```sh
git clone https://github.com/tiqsclass6/jenkins-test1.git
cd jenkins-test1
```

**Impact:** Cloning the repository ensures you have the latest project code locally, allowing you to inspect and modify the pipeline as needed.

---

## Step 2: Install Required Tools

Ensure the following tools are installed:

- **Jenkins**: For orchestrating the CI/CD pipeline.
- **Terraform**: For infrastructure as code deployment.
- **AWS CLI**: For interacting with AWS services.

Verify installations:

```sh
terraform -version  # Check Terraform version
aws --version       # Check AWS CLI version
```

**Impact:** Having these tools installed is essential for executing the stages defined in the Jenkins pipeline.

---

## Step 3: Set Up Jenkins Pipeline

### 1️⃣ Access Jenkins

- Open Jenkins (`http://localhost:8080` or your server URL).
- Log in with admin credentials.

### 2️⃣ Create a New Pipeline Job

- Click on **New Item** > **Pipeline**.
- Name the project: **jenkins-test1**.
- Select **Pipeline** > Click **OK**.

### 3️⃣ Configure the Pipeline

- Under the **Pipeline** section, select **Pipeline script from SCM**.
- Choose **Git** and enter the repository URL:

  ```
  https://github.com/tiqsclass6/jenkins-test1.git
  ```

- Save and apply changes.

**Impact:** Configuring the Jenkins pipeline allows automated execution of the defined stages, facilitating continuous integration and deployment.

---

## Step 4: Configure AWS Credentials in Jenkins

The pipeline requires AWS credentials to manage infrastructure.

- In Jenkins, navigate to **Manage Jenkins** > **Manage Credentials**.
- Add a new **AWS credential** with the ID `Jenkins1`.

**Impact:** Setting AWS credentials enables Jenkins to authenticate with AWS services during the pipeline execution.

---

## Step 5: Review and Understand the Jenkinsfile

The `Jenkinsfile` defines the pipeline stages:

1. **Set AWS Credentials**: Authenticates with AWS using the specified credentials.
2. **Checkout Code**: Retrieves the latest code from the repository.
3. **Initialize Terraform**: Prepares Terraform for deployment.
4. **Validate Terraform**: Ensures Terraform configuration is syntactically valid.
5. **Plan Terraform**: Generates an execution plan for infrastructure changes.
6. **Apply Terraform**: Applies the planned infrastructure changes upon manual approval.

**Impact:** Understanding these stages is crucial for troubleshooting and customizing the pipeline to fit your infrastructure needs.

---

## Step 6: Run the Jenkins Pipeline

### 1️⃣ Start the Pipeline

- Go to the **Jenkins Dashboard**.
- Select the **jenkins-test1** pipeline.
- Click **Build Now** to initiate the pipeline.

### 2️⃣ Monitor Execution

- View real-time logs under **Console Output**.
- Approve the **Apply Terraform** stage when prompted.

**Impact:** Running the pipeline automates the infrastructure deployment process, ensuring consistency and reliability.

---

## Step 7: Verify Infrastructure Deployment

After the pipeline completes:

- Use the AWS Management Console or CLI to verify the deployed resources.

**Impact:** Verification ensures that the infrastructure is deployed as intended and is functioning correctly.

---

## Step 8: Cleanup Resources

To avoid unnecessary costs:

- Navigate to the **terraform** directory.
- Run `terraform destroy` to remove the deployed resources.

```sh
cd terraform
terraform destroy -auto-approve
```

**Impact:** Cleaning up resources prevents incurring charges for unused infrastructure and maintains a tidy environment.

---

## Conclusion

Following this guide, you can set up and run the Jenkins pipeline defined in the `Jenkinsfile`, automating the deployment of infrastructure using Terraform and AWS. Understanding each stage of the pipeline allows for effective customization and troubleshooting.

For contributions or issues, submit a **Pull Request** or open an **Issue** in GitHub!

**Happy Automating!** 🚀
