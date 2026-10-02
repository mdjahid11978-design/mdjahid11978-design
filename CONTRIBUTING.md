# Contributing to Jahid's Projects

Thank you for your interest in contributing to the JAHIDS.AI ecosystem and related projects!

---

## How to Contribute

### Reporting Issues

1. Check existing issues first
2. Provide a clear description of the problem
3. Include relevant code snippets or logs
4. Specify your environment (OS, Python version, etc.)

### Submitting Pull Requests

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Write or update tests as needed
5. Commit with clear messages: `git commit -m "Add feature: description"`
6. Push to your fork
7. Open a Pull Request with a clear description

### Code Standards

- **Python:** PEP 8 compliance, type hints where possible
- **TypeScript/JavaScript:** ESLint and Prettier formatting
- **Documentation:** Clear docstrings and README updates
- **Tests:** Include unit tests for new features

### Project Areas

- **Agent Systems:** Multi-agent coordination, orchestration
- **AI/LLM Integration:** Model routing, prompt engineering
- **Platform Engineering:** Infrastructure, deployment
- **Governance:** Authorization, verification, audit trails

---

## Development Setup

```bash
# Clone the repository
git clone https://github.com/mdjahid11978-design/[REPO_NAME].git
cd [REPO_NAME]

# Create virtual environment (Python)
python -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
pip install -r requirements-dev.txt  # for development

# Run tests
pytest
```

---

## Commit Message Format

```
<type>: <subject>

<body>

<footer>
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

Example:
```
feat: add agent capability matching

Implement semantic matching for agent skills discovery.
Uses vector embeddings for improved accuracy.

Closes #123
```

---

## Code Review Process

1. All PRs require review
2. Automated tests must pass
3. Code coverage should be maintained
4. Clear documentation is required

---

## Questions?

Email: [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

Thank you for contributing! 🙏