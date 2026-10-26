# Task 6: Terraform generation & Ansible ad-hoc verification
Write-Host "=== 1. Running Terraform Apply to Generate transcoder_output.env ===" -ForegroundColor Cyan
$env:Path = "C:\Users\Aayush\AppData\Local\Microsoft\WinGet\Links;" + $env:Path
terraform apply -auto-approve

Write-Host "`n=== 2. Running Ansible Ad-Hoc 'stat' Module to Verify File Creation ===" -ForegroundColor Cyan
docker run --rm -v "${PWD}:/workspace" -w /workspace ansible-local ansible localhost -m stat -a "path=/workspace/transcoder_output.env"
