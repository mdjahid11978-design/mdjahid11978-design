# Security Policy

## Reporting Security Vulnerabilities

If you discover a security vulnerability in any Jahid project, please email [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com) instead of using the public issue tracker.

Please include:
- Description of the vulnerability
- Steps to reproduce (if applicable)
- Impact assessment
- Suggested fix (if you have one)

**Do not** open public issues for security vulnerabilities.

---

## Security Best Practices

When working with these projects:

### API Keys and Secrets
- Never commit API keys, tokens, or passwords
- Use environment variables (`.env` files with `.gitignore`)
- Rotate secrets regularly
- Use GitHub Secrets for CI/CD

### Dependencies
- Keep dependencies up to date
- Review dependency changes in PRs
- Use tools like Dependabot
- Audit for vulnerabilities: `npm audit`, `pip audit`

### Authentication
- Implement proper authorization checks
- Use cryptographic hashing for passwords
- Validate all inputs
- Log security-relevant events

### Data Protection
- Encrypt sensitive data at rest and in transit
- Implement proper access controls
- Follow principle of least privilege
- Regular security audits

---

## Supported Versions

Security updates are provided for:
- Current major version
- Previous major version (if applicable)

Older versions may not receive security patches.

---

## Security Response Timeline

1. **Acknowledgment:** Within 24-48 hours
2. **Assessment:** Within 1 week
3. **Fix/Patch:** As soon as possible (depends on severity)
4. **Disclosure:** After patch is released

---

Thank you for helping keep these projects secure!