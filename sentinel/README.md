# Sentinel Policy - Security Group Review Required

## Overview

This policy prevents the creation or modification of AWS Security Groups without manual review.

## Policy Behavior

- **Hard Mandatory**: Any security group change will block `terraform apply`
- **Blocked Resources**:
  - `aws_security_group`
  - `aws_security_group_rule`
  - Any resource matching `aws_vpc_security_group*`

## Setup in Terraform Cloud/Enterprise

### 1. Upload Policy

```bash
# Using TFE CLI
tfe policieset create -name "Security Policies" -description "Security group review requirements"
tfe policy upload -policy "require-sg-review" -policy-set "Security Policies"
```

### 2. Associate with Workspace

Add this policy set to your workspace in Terraform Cloud UI:
- Workspace Settings → Policy Sets → Add policy set

### 3. Test the Policy

When a plan includes security group changes:
```
✗ Policy "require-sg-review" failed
Security Group changes detected: 1 resource(s) will be modified.
This policy requires manual review before applying.
Please contact your security team to approve this change.
```

## Override Process (Emergency Only)

If you need to bypass this policy in emergencies:
1. Go to Terraform Cloud → Runs
2. Find the blocked run
3. Click "Override Policy" (requires admin permissions)
4. Document the reason for audit trail
