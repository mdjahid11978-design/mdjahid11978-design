#!/bin/bash

################################################################################
# Jahid's Bulk Repository README Deployment Script
# Deploys unique, smart README content to all repositories in the GitHub account.
# Usage: bash bulk-readme-deployer.sh
################################################################################

set -e

OWNER="mdjahid11978-design"
GITHUB_CLI_INSTALLED=$(command -v gh &> /dev/null && echo "true" || echo "false")

if [ "$GITHUB_CLI_INSTALLED" != "true" ]; then
  echo "❌ GitHub CLI (gh) is required but not installed."
  echo "Install it here: https://cli.github.com/"
  exit 1
fi

echo "🔐 Checking GitHub authentication..."
gh auth status || { echo "❌ Not authenticated to GitHub"; exit 1; }

echo "📋 Fetching repositories for $OWNER..."
REPOS=$(gh repo list "$OWNER" --limit 300 --json name -q '.[].name')
REPO_COUNT=$(echo "$REPOS" | wc -l)

echo "✅ Found $REPO_COUNT repositories"

generate_readme() {
  local REPO_NAME="$1"
  local REPO_DESC="$2"

  case "$REPO_NAME" in
    ai-jarvis-system*|jarvis*)
      cat <<EOF
# AI JARVIS System

Real-time AI control and monitoring system with voice control, automation workflows, and autonomous agent execution.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

JARVIS System is a complete AI platform integrating real-time monitoring, voice control, autonomous workflows, and multi-agent orchestration.

## Key Features

- ✅ Real-time agent monitoring and control
- ✅ Voice-based interaction and commands
- ✅ Autonomous workflow execution
- ✅ Analytics and performance tracking
- ✅ Multi-agent orchestration
- ✅ Modern responsive UI

## Tech Stack

Python • TypeScript • PostgreSQL • Redis • Docker • AWS • LLM APIs

---

## Status

- [x] Core monitoring
- [x] Voice integration
- [x] Agent orchestration
- [ ] Advanced features

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    agent-swarm*)
      cat <<EOF
# Agent Swarm

Agent-to-agent task coordination framework with micropayments on Base blockchain.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

Agent Swarm enables autonomous agents to post tasks, claim work, execute collaboratively, and settle payments in USDC on Base.

## Key Features

- ✅ Decentralized task marketplace
- ✅ Agent discovery and matching
- ✅ Swarm-style execution
- ✅ Verifiable task completion
- ✅ Micropayment settlement
- ✅ Reputation tracking

## Tech Stack

Python • Agent Frameworks • Base + USDC • PostgreSQL • Docker

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    ClawTeam*)
      cat <<EOF
# ClawTeam

Agent swarm intelligence platform with one-command automation and adaptive mission planning.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

ClawTeam coordinates multiple agents to execute complex missions with automatic task decomposition, adaptive replanning, and real-time monitoring.

## Key Features

- ✅ One-command mission execution
- ✅ Automatic task decomposition
- ✅ Multi-agent coordination
- ✅ Adaptive replanning
- ✅ Real-time monitoring
- ✅ Resource optimization

## Tech Stack

Python • Agent Orchestration • PostgreSQL • Redis • Docker

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    agentskills*)
      cat <<EOF
# Agent Skills

Specification and documentation for agent capability discovery, interaction patterns, and extensibility.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

Agent Skills defines a formal specification for how agents describe capabilities, discover others, and interact in standardized ways.

## Key Features

- ✅ Standard skill definition format
- ✅ Capability discovery protocol
- ✅ Structured agent interaction
- ✅ Extensible skill registry
- ✅ Versioning and compatibility
- ✅ Permission specification

## Tech Stack

YAML • JSON • PostgreSQL • REST APIs

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    openclaw*|OpenClaw*)
      cat <<EOF
# OpenClaw

Personal AI assistant platform with agent-first architecture and extensible skills system.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

OpenClaw is a personal AI assistant platform with agent-first design, skill registry, cross-platform support, and persistent memory.

## Key Features

- ✅ Agent-first architecture
- ✅ Extensible skills and plugins
- ✅ Cross-platform execution
- ✅ Context and memory persistence
- ✅ Personalized behavior
- ✅ Local-first flexibility

## Tech Stack

Python • TypeScript • React • PostgreSQL • Docker

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    FinRobot*)
      cat <<EOF
# FinRobot

Open-source AI agent platform for financial analysis using LLMs.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

FinRobot is an AI agent platform for financial analysis, market insights, portfolio tracking, risk assessment, and investment decision support.

## Key Features

- ✅ Automated financial analysis
- ✅ LLM-powered reasoning
- ✅ Market insights and research
- ✅ Portfolio analysis
- ✅ Risk assessment
- ✅ Report generation

## Tech Stack

Python • LLM APIs • Pandas • PostgreSQL • Docker

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    relic*)
      cat <<EOF
# Relic

Framework for transferring agent memory and personality across AI systems using Markdown-based state transfer.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

Relic enables lossless agent memory transfer, personality continuity, and portable state between systems using human-readable Markdown format.

## Key Features

- ✅ Markdown-based state format
- ✅ Lossless memory preservation
- ✅ Cross-platform portability
- ✅ Zero-dependency transfer
- ✅ Human-readable snapshots
- ✅ Version control friendly

## Tech Stack

Python • Markdown • JSON

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    hermes*)
      cat <<EOF
# Hermes Agent

Personal agent system designed to adapt, learn, and grow with the user over time.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## What It Does

Hermes Agent is a personal AI assistant that learns preferences, adapts responses, remembers context, and evolves with continued interaction.

## Key Features

- ✅ Persistent memory and learning
- ✅ Adaptive personality evolution
- ✅ Personalization over time
- ✅ Context-aware responses
- ✅ Goal tracking and support
- ✅ Relationship building

## Tech Stack

Python • PostgreSQL • LLM Integration

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    autogen*)
      cat <<EOF
# AutoGen

A programming framework for agentic AI systems.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## Overview

Framework for building agentic AI systems with structured communication, orchestration, and multi-agent coordination.

## Focus

- Agentic AI programming
- Multi-agent systems
- Agent frameworks

## Tech Stack

Python • AI Orchestration

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    automa*)
      cat <<EOF
# Automa

Browser automation extension for connecting blocks and automating workflows.

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## Overview

Browser extension for workflow automation, block-based execution, and browser task automation.

## Focus

- Browser automation
- Workflow blocks
- Task execution

## Tech Stack

Vue • JavaScript • Browser APIs

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;

    *)
      cat <<EOF
# ${REPO_NAME}

${REPO_DESC}

**GitHub:** [mdjahid11978-design](https://github.com/mdjahid11978-design)  
**Email:** [mdjahid11978@outlook.com](mailto:mdjahid11978@outlook.com)

---

## Overview

Part of Jahid's portfolio of AI systems, autonomous intelligence projects, and platform engineering work.

## Focus Areas

- Autonomous agents and systems
- AI orchestration and coordination
- Full-stack product engineering
- Platform architecture and design

## Tech Stack

Python • TypeScript • PostgreSQL • Docker • AWS • LLM Integration

---

**By Jahid** — Building autonomous systems with clarity, structure, and execution.

[View Profile](https://github.com/mdjahid11978-design)
EOF
      ;;
  esac
}

UPDATED=0
SKIPPED=0

for REPO in $REPOS; do
  echo -n "📝 $REPO ... "
  DESC=$(gh repo view "$OWNER/$REPO" --json description -q '.description' 2>/dev/null || echo "")
  README_CONTENT=$(generate_readme "$REPO" "$DESC")
  ENCODED=$(printf '%s' "$README_CONTENT" | base64 -w0)

  if gh api --method PUT \
    -H "Accept: application/vnd.github+json" \
    "/repos/${OWNER}/${REPO}/contents/README.md" \
    -f message="Set standardized repository README" \
    -f content="$ENCODED" \
    -f branch="main" >/dev/null 2>&1; then
    echo "✅ updated"
    UPDATED=$((UPDATED+1))
  else
    echo "⏭️ skipped"
    SKIPPED=$((SKIPPED+1))
  fi

  sleep 0.4
 done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Deployment Summary:"
echo "   ✅ Updated: $UPDATED repositories"
echo "   ⏭️  Skipped: $SKIPPED repositories"
echo "   Total: $REPO_COUNT repositories"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "✨ Process complete."
echo "Run: chmod +x bulk-readme-deployer.sh && ./bulk-readme-deployer.sh"
