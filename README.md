Newelly Created Terraform Pipeline

======================================== Error Messages =====================================

ERROR MESSAGE

Error: Saved plan is stale

The given plan file can no longer be applied because the state was changed
by another operation after the plan was created.

--------------------------------------------------------------------------------------------- 

Terraform plan files (.tfplan) are tightly coupled to the exact state snapshot
that existed at the moment terraform plan was executed.

This error occurs when:
• The Terraform state file was modified AFTER the plan was created BUT BEFORE terraform apply was executed

Terraform intentionally blocks the apply to prevent state corruption.

Terraform plan files are single-use artifacts.

If state changes → plan becomes invalid → Terraform blocks apply.

This is expected, correct, and protects your infrastructure.

---------------------------------------------------------------------------------------------

Terraform enforces state consistency guarantees.

If it allowed stale plans:
• Resources could be destroyed incorrectly
• Drift would go undetected
• State file could become invalid

This is a safety feature, not a bug.

====================================== Recommended Architecture (Industry Best Practice) =============================

This is how large enterprises and regulated environments operate.

| Pipeline                | Purpose      | Trigger     | Approval          |
| ----------------------- | ------------ | ----------- | ----------------- |
| `terraform-ci.yml`      | plan / apply | Auto (main) | Yes               |
| `terraform-destroy.yml` | destroy only | Manual      | Stronger approval |


