# Security Policy

We take the security of the `Build5Nines/terraform-azure-naming` project seriously. If you discover a security issue, please report it responsibly.

## Reporting a Vulnerability

Please report security issues privately through one of these channels:

- **Email:** security@build5nines.com
- **GitHub Security Advisories (preferred):** https://github.com/Build5Nines/terraform-azure-naming/security/advisories

When reporting, please include:

- Description of the issue and potential impact
- Steps to reproduce (Terraform version, provider versions, config snippets)
- Any relevant logs or proof-of-concept (avoid destructive actions)

**Please do not disclose the issue publicly until we've had a chance to investigate and publish a fix.**

## What to Expect

- We'll acknowledge your report as promptly as we can
- We'll investigate and work with you on remediation
- After a fix is released, we'll credit you in release notes if desired

## Scope

This repository provides naming conventions and helpers for Azure resources via Terraform. Relevant security concerns include:

- Inadvertent exposure of sensitive data in resource names
- Misconfigurations caused by name collisions or truncation
- Injection risks if names are composed from unsanitized input

For cloud provider vulnerabilities outside this module's scope, please report to the appropriate vendor.

## Thank You

We appreciate your efforts to help keep our community and users safe. Thank you for practicing responsible disclosure.
