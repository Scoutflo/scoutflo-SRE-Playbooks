# Security Policy

## Supported Versions

We actively support and provide security updates for the following versions:

| Version | Supported          |
| ------- | ------------------ |
| Latest  | :white_check_mark: |
| All     | :white_check_mark: |

## Reporting a Vulnerability

We take the security of our playbooks seriously. If you discover a security vulnerability, please follow these steps:

### How to Report

1. **Do NOT** open a public GitHub issue for security vulnerabilities
2. Email security concerns to: security@scoutflo.com
3. Include the following information:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if any)

### What to Expect

- **Response Time**: We aim to respond within 48 hours
- **Update Frequency**: We'll keep you informed of our progress
- **Disclosure**: We'll coordinate with you on public disclosure after the fix is released

### Security Best Practices

When using these playbooks:

- **Never commit secrets**: Use placeholders and environment variables
- **Review playbooks**: Always review playbooks before applying in production
- **Test in staging**: Test playbooks in non-production environments first
- **Keep updated**: Regularly pull the latest playbook versions
- **Validate inputs**: Ensure all placeholder values are validated

### Scope

The following are considered in-scope for security reporting:

- Security vulnerabilities in playbook logic
- Incorrect security configurations in playbooks
- Missing security best practices in playbooks
- Issues that could lead to security misconfigurations

### Out of Scope

The following are considered out of scope:

- Issues in your own infrastructure configurations
- Issues in AWS or Kubernetes services themselves
- General questions about security best practices
- Feature requests

## Security Updates

Security updates will be:

- Released as soon as possible after verification
- Documented in release notes
- Tagged with security labels
- Communicated through GitHub releases

---

**Thank you for helping keep the SRE Playbooks repository secure!**
