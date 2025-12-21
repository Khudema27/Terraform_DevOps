# Use official HashiCorp Terraform image as base
FROM hashicorp/terraform:1.6.0

# Set working directory
WORKDIR /workspace

# Copy all Terraform files to container
COPY . .

# Optional: Run terraform init when container starts
CMD ["terraform", "init"]
