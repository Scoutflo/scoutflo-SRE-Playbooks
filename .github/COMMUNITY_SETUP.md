# Community Setup Guide

This guide will help you configure your GitHub repository for maximum community engagement.

## 📋 GitHub Repository Settings Checklist

### 1. Repository Settings

Go to **Settings** → **General**:

- [ ] **Description**: Add a clear description (e.g., "Comprehensive SRE incident response playbooks for AWS and Kubernetes")
- [ ] **Topics**: Add relevant topics:
  - `sre`
  - `incident-response`
  - `runbooks`
  - `aws`
  - `kubernetes`
  - `k8s`
  - `devops`
  - `troubleshooting`
  - `playbooks`
  - `site-reliability-engineering`
- [ ] **Website**: Add `https://scoutflo.com`
- [ ] **Visibility**: Set to Public
- [ ] **Features**: Enable:
  - ✅ Issues
  - ✅ Discussions
  - ✅ Projects
  - ✅ Wiki (optional)
  - ✅ Releases

### 2. Branch Protection Rules

Go to **Settings** → **Branches**:

- [ ] Add rule for `master` branch:
  - ✅ Require pull request reviews before merging
  - ✅ Require review from CODEOWNERS
  - ✅ Require status checks to pass before merging
  - ✅ Require branches to be up to date before merging
  - ✅ Include administrators

### 3. Issue Templates

Go to **Settings** → **General** → **Issues**:

- [ ] Enable "Set up templates"
- [ ] Verify templates are working:
  - Bug Report
  - Feature Request
  - Question

### 4. Discussions

Go to **Settings** → **General** → **Discussions**:

- [ ] Enable Discussions
- [ ] Set up categories (already configured in `.github/discussions/categories.json`):
  - 💬 General Discussion
  - 💡 Ideas & Suggestions
  - ❓ Q&A
  - 🎉 Show and Tell
  - 📚 Tutorials & Guides

### 5. Pull Requests

Go to **Settings** → **General** → **Pull requests**:

- [ ] Enable "Allow merge commits"
- [ ] Enable "Allow squash merging" (recommended)
- [ ] Enable "Allow rebase merging"
- [ ] Enable "Always suggest updating pull request branches"
- [ ] Enable "Require review from CODEOWNERS"

### 6. Security

Go to **Settings** → **Code security and analysis**:

- [ ] Enable "Dependency graph"
- [ ] Enable "Dependabot alerts"
- [ ] Enable "Dependabot security updates"
- [ ] Enable "Code scanning" (optional, for code analysis)

### 7. Actions

Go to **Settings** → **Actions** → **General**:

- [ ] Enable "Allow all actions and reusable workflows"
- [ ] Set "Workflow permissions" to "Read and write permissions"

### 8. Pages (Optional)

Go to **Settings** → **Pages**:

- [ ] Enable GitHub Pages (if you want to host documentation)
- [ ] Select source branch (e.g., `gh-pages` or `master/docs`)

### 9. Social Preview

Go to **Settings** → **General**:

- [ ] Upload a social preview image (1200x630px recommended)
- [ ] This appears when sharing the repo on social media

## 🎯 Community Engagement Strategies

### Encourage Contributions

1. **First-time Contributors**: Label issues with `good-first-issue`
2. **Hacktoberfest**: Add `hacktoberfest` topic during October
3. **Documentation**: Create `documentation` label for doc improvements
4. **Help Wanted**: Use `help-wanted` label for community-friendly tasks

### Regular Activities

1. **Weekly/Monthly Updates**: Post updates in Discussions
2. **Showcase Contributions**: Highlight contributors in README or Discussions
3. **Answer Questions**: Actively respond to issues and discussions
4. **Review PRs Promptly**: Aim for 48-hour response time

### Recognition

1. **Contributors Section**: Update README with top contributors
2. **Release Notes**: Thank contributors in release notes
3. **Discussions**: Create "Contributor Spotlight" discussions

## 📊 Metrics to Track

- **Stars**: Track growth over time
- **Forks**: Monitor fork activity
- **Issues**: Track open/closed issues
- **Pull Requests**: Monitor PR activity
- **Discussions**: Track engagement
- **Contributors**: Monitor contributor growth

## 🔗 Useful GitHub Features

### Insights Tab

Monitor repository health:
- **Pulse**: Weekly activity summary
- **Contributors**: Contribution statistics
- **Community**: Community standards compliance
- **Traffic**: Views, clones, referrers
- **Forks**: Fork activity

### Community Standards

GitHub automatically checks:
- ✅ Description
- ✅ README
- ✅ License
- ✅ Code of Conduct
- ✅ Contributing Guidelines
- ✅ Issue Templates
- ✅ Pull Request Template

## 🚀 Quick Wins for Visibility

1. **Add to Awesome Lists**: Submit to relevant awesome lists
2. **Share on Social Media**: Twitter, LinkedIn, Reddit
3. **Blog Posts**: Write about the project
4. **Conference Talks**: Present at SRE/DevOps conferences
5. **Newsletter**: Include in relevant newsletters
6. **Community Forums**: Share in relevant forums (Reddit r/devops, etc.)

## 📝 Repository Description Template

```
Comprehensive SRE incident response playbooks for AWS and Kubernetes. 
163 playbooks covering common infrastructure issues with step-by-step 
troubleshooting guides. Perfect for on-call engineers and SRE teams.
```

## 🏷️ Recommended Topics

```
sre, incident-response, runbooks, aws, kubernetes, k8s, devops, 
troubleshooting, playbooks, site-reliability-engineering, 
infrastructure, cloud, monitoring, observability, best-practices
```

---

**Need help?** Open a discussion or issue in the repository!
