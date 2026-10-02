# One-Line Deployment Commands

## MIT License Repos (17 total)

```bash
# Copy LICENSE to each MIT repo
cp LICENSE ai-jarvis-system-93b01524/LICENSE
cp LICENSE ClawTeam/LICENSE
cp LICENSE agentskills/LICENSE
cp LICENSE openclaw-8540ee5f/LICENSE
cp LICENSE relic/LICENSE
cp LICENSE hermes-agent/LICENSE
cp LICENSE awesome-openclaw-skills-b362e855/LICENSE
cp LICENSE lossless-claw/LICENSE
cp LICENSE clawhub.ai/LICENSE
cp LICENSE autogen/LICENSE
cp LICENSE automa/LICENSE
cp LICENSE gcal-notion-integration/LICENSE
cp LICENSE interceptor/LICENSE
cp LICENSE json-render/LICENSE
cp LICENSE JARVIS-1/LICENSE
cp LICENSE jarvis-ultimate-system/LICENSE
cp LICENSE chatbot/LICENSE
cp LICENSE apps-script-oauth2/LICENSE
```

## Apache 2.0 License Repos (2 total)

```bash
# Copy LICENSE.APACHE to each Apache repo
cp LICENSE.APACHE agent-swarm/LICENSE
cp LICENSE.APACHE FinRobot/LICENSE
```

## CC0 License Repos (Documentation)

```bash
# Copy LICENSE.CC0 to documentation repos
cp LICENSE.CC0 documentation/LICENSE
cp LICENSE.CC0 docs/LICENSE
```

---

## Bulk Deployment (All at Once)

### Option 1: Using the Bash Script

```bash
chmod +x bulk-license-deployer.sh
./bulk-license-deployer.sh
```

This script will:
- Deploy MIT to 17 repos
- Deploy Apache 2.0 to 2 repos
- Show progress for each repo
- Provide summary statistics

### Option 2: Manual Loop (if gh CLI available)

```bash
# MIT repos
for repo in ai-jarvis-system-93b01524 ClawTeam agentskills openclaw-8540ee5f relic hermes-agent awesome-openclaw-skills-b362e855 lossless-claw clawhub.ai autogen automa gcal-notion-integration interceptor json-render JARVIS-1 jarvis-ultimate-system chatbot apps-script-oauth2; do
  echo "Deploying MIT to $repo..."
  cp LICENSE "$repo/LICENSE"
  cd "$repo"
  git add LICENSE
  git commit -m "Add MIT license"
  git push origin main
  cd ..
done

# Apache 2.0 repos
for repo in agent-swarm FinRobot; do
  echo "Deploying Apache 2.0 to $repo..."
  cp LICENSE.APACHE "$repo/LICENSE"
  cd "$repo"
  git add LICENSE
  git commit -m "Add Apache 2.0 license"
  git push origin main
  cd ..
done
```

### Option 3: GitHub Web Interface (Manual)

1. Go to each repository
2. Create new file named `LICENSE`
3. Paste appropriate license text
4. Commit to main branch

---

## Verification

After deployment, verify licenses are in place:

```bash
# Check if LICENSE exists
gh repo view mdjahid11978-design/agent-swarm --json nameWithOwner,licenseInfo

# Or check multiple repos
for repo in ai-jarvis-system-93b01524 agent-swarm ClawTeam; do
  gh repo view mdjahid11978-design/$repo --json nameWithOwner,licenseInfo
done
```

---

## License Distribution

| License | Count | Repos |
|---|---|---|
| MIT | 17 | Default for most projects |
| Apache 2.0 | 2 | agent-swarm, FinRobot |
| CC0 | 1 | Documentation |
| **Total** | **20** | **Active portfolio repos** |

---

## Notes

- **MIT is the default** for 85% of active repos
- **Apache 2.0** chosen for financial/algorithm-heavy projects (FinRobot, agent-swarm) due to patent protection clause
- **CC0** for pure documentation that should be public domain
- Archived/experimental repos can use MIT or skip licensing
- All licenses are permissive (allow commercial use)

---

## Support

Questions about licensing? Email: [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

For more info: [choosealicense.com](https://choosealicense.com/)