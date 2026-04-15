# Seed Agent: A Cognitive Operating System for Claude Code
**Version:** v1.0.0

Seed Agent is a **minimal, domain-agnostic meta-architecture** that transforms Claude Code into a highly disciplined, self-improving engineering engine. It is not just a collection of prompts; it is a **deterministic lifecycle management system** implemented as a suite of Claude Code plugins.

## 🌟 The Vision

The Seed Agent follows the biological analogy of a seed: it contains the genetic machinery to grow into a specialized agent for any domain. Whether you are building a website, a research pipeline, or a legal practice manager, the Seed Agent provides the **meta-jobs** (Design, Build, Improve) and the **enforcement layers** to ensure high-quality, professional results.

### Core Philosophy: "Mechanisms, Not Categories"
Instead of pre-built domain features, the Seed Agent ships with **mechanisms**:
- **OPEVC Lifecycle:** A five-phase cognitive loop (Observe, Plan, Execute, Verify, Condense).
- **Point-Based Discipline:** A credit system that prevents skipping deliberation phases.
- **Structural Integrity:** Hardened shell-script hooks that block improper tool use and protect project state.
- **Episodic Memory:** Causal, structured git history that preserves the "why" behind every change.

---

## 🏗️ Architecture: The OPEVC Engine

The Seed Agent operates through a compartmentalized cognitive cycle called **OPEVC**. Each phase is an "organ" in the agent's brain with its own scripts, hidden state (`data.json`), and coaching voices.

| Phase | Purpose | Artifacts Produced |
|:---|:---|:---|
| **Observe** | Gather context, read code, search web. | Synthesis notes in `CLAUDE.md`. |
| **Plan** | Design the approach, define criteria. | Concrete implementation plans. |
| **Execute** | Implement the plan surgically. | Code changes + execution logs. |
| **Verify** | Run tests, validate against criteria. | Pass/Fail verdicts and audit logs. |
| **Condense** | Extract knowledge, deflate memory. | Long-term knowledge files. |

---

## 🚀 Getting Started

To install the Seed Agent into your Claude Code workspace, follow these steps:

### 1. Clone & Setup
Clone this repository into a `.claude/plugins/` directory within your project:

```bash
mkdir -p .claude/plugins
git clone https://github.com/your-username/seed-agent.git .claude/plugins/seed_agent
```

### 2. Register Hooks
Add the Seed Agent hooks to your `.claude/settings.json` (or `settings.local.json`). This enables the deterministic enforcement layer.

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Edit|Write|MultiEdit|Read|Bash",
        "hooks": [{ "type": "command", "command": "bash .claude/plugins/seed_agent/plugin_integrity/hooks/plugin-guard.sh", "timeout": 120 }]
      }
    ],
    "PostToolUse": [
      {
        "matcher": "Bash",
        "hooks": [{ "type": "command", "command": "bash .claude/plugins/seed_agent/phasic_system/hooks/phase-init.sh", "timeout": 10 }]
      }
    ]
  }
}
```
*(Full registration template available in `settings.json.template`)*

### 3. Initialize the Brain
Run the initialization command to set up your first job and enter the **Observe** phase:

```bash
# Start a new job
[PLUGIN-LOCK] job_core
job.sh create "My First Task"
job.sh focus "My First Task"

# Enter the OPEVC cycle
phase.sh advance
```

---

## 🛡️ Security & Integrity

The Seed Agent is built on a **Trust Hierarchy**:
1. **System (Immutable):** The core plugins and hooks.
2. **User (Approved):** You, the human operator, who approves transitions and complex actions.
3. **Agent (Open):** The LLM, which operates within the bounds set by the system.

**Safe-Lock:** If the agent introduces a change that breaks a test, the `plugin_integrity` layer automatically reverts the workspace to the last known good state.

---

## 📖 Key Principles

- **Everything is a Job:** All work is tracked as a job object with a lifecycle.
- **Documentation IS Cognition:** Updating `CLAUDE.md` and maintaining knowledge is not overhead—it is the act of thinking.
- **Verification is the only Truth:** We do not trust claims; we trust tests.
- **Fix it In-Cycle:** If you find a bug in the code you are touching, fix it now. Do not defer.

---

## 🤝 Contributing

The Seed Agent is a living system. We welcome contributions that harden our guards, improve our coaching voices, or add new generative meta-jobs.

**License:** MIT
