🚀 Terraform Practice: Local File Versioning

This example demonstrates how Terraform tracks and updates infrastructure (in this case, a local file) when configurations change.

🧱 Steps

Initialize Terraform

terraform init


Create file with v1 content

resource "local_file" "example" {
  content  = "Hello from PwSkills { v1 }"
  filename = "${path.module}/message.txt"
}

terraform plan
terraform apply


Update to v2 content

resource "local_file" "example" {
  content  = "Hello from PwSkills { v2 }"
  filename = "${path.module}/message.txt"
}

terraform plan
terraform apply


Revert back to v1
Simply edit the content back to v1 and re-apply:

terraform plan
terraform apply

📘 Notes

Terraform automatically detects differences between your configuration and the current state.

Rolling back is as easy as reverting the .tf file to a previous version and running terraform apply.

Avoid reusing old plan files (like terraform apply before-change2.tfplan), as they ignore new edits.
