🚀 AWS Infrastructure Deployment using Terraform
This project deploys a full AWS infrastructure using Terraform, hosted on GitHub, and includes an S3 static website and EC2 instance setup.

📌 Features
EC2 instance deployment
S3 bucket with static website hosting
Managed fully through Terraform


🛠️ Technologies Used
Terraform
AWS (EC2, S3, IAM)
GitHub


🔐 AWS Credentials Setup
This project uses AWS credentials securely:
Local Machine
Configure credentials using:
aws configure
This stores your AWS Access Key and Secret Key locally (not in the repository).

GitHub

Add these secrets in:
GitHub → Repository Settings → Secrets → Actions
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
These are used by GitHub Actions securely.

🚀 Deployment Steps
git clone https://github.com/<username>/<repo>
cd <repo>

terraform init
terraform validate
terraform plan
terraform apply 

To destroy:
terraform destroy 

📂 Project Structure
main.tf
variables.tf
outputs.tf
provider.tf

🌐 Website Hosting
Your static website is hosted using an S3 bucket with website hosting enabled.
You can access it via the S3 website endpoint.
http://khudema-terraform-website-e41b44a5.s3-website-us-east-1.amazonaws.com/

🙌 Author
Khudema Haroon
