# Seed Agent: A Digital Cortex for Claude Code
**Version:** v1.0.0

Seed Agent is a **minimal, domain-agnostic digital cortex** that transforms Claude Code into a highly disciplined, self-improving personal assistant. It is not framed for just one profession; whether you need a dedicated project manager, a meticulous research assistant, or a senior software engineer, the Seed Agent provides the structural foundation to grow specialized capabilities tailored to your exact needs. 

It is a **deterministic lifecycle management system** implemented as a suite of Claude Code plugins.

## 🌟 The Vision

The Seed Agent follows the biological analogy of a seed: it contains the genetic machinery to grow into a specialized organism depending on its environment. Rather than predicting what features you'll need, it provides the generative pipelines to design, build, and improve the solutions you ask for.

### Core Philosophy: "Mechanisms, Not Categories"
Instead of pre-built domain features, the Seed Agent ships with **mechanisms**:
- **OPEVC Lifecycle:** A five-phase cognitive loop (Observe, Plan, Execute, Verify, Condense).
- **Point-Based Discipline:** A cognitive credit system that prevents the agent from skipping vital deliberation phases.
- **Structural Integrity:** Hardened shell-script hooks that block improper tool use and protect the agent's internal state.
- **Episodic Memory:** Causal, structured git history that preserves the "why" behind every change.

---

## 🔄 The OPEVC Engine

![OPEVC Cognitive Cycle](assets/OPEVC.png)

The core of the Seed Agent is the compartmentalized cognitive cycle called **OPEVC**. Each phase restricts the agent's tool access, forcing it to think before it acts, and verify before it finishes.

| Phase | Purpose | Artifacts Produced |
|:---|:---|:---|
| **Observe** | Gather context, read files, search the web. | Synthesis notes in `CLAUDE.md`. |
| **Plan** | Design the approach, define strict criteria. | Concrete implementation plans. |
| **Execute** | Implement the plan surgically. | File changes + execution logs. |
| **Verify** | Run verification, validate against criteria. | Pass/Fail verdicts and audit logs. |
| **Condense** | Extract knowledge, deflate memory limits. | Long-term knowledge files. |

---

## 💼 The Job System & Maturation Levels

Everything the Seed Agent does is tracked as a **Job**. When a job is in focus, every interaction you have with the agent—the initial prompt, follow-up Q&A, and real-time corrections—is collected by the job object. This feeds into the interaction summary, preventing context bloat while retaining critical user intent.

Jobs mature through three distinct levels as the agent learns how to perform them:

### Level 1: Single-Cycle (Highly Collaborative)
When asking the agent to do a brand new type of task, it operates in a single, highly collaborative OPEVC cycle. The agent will go back and forth with you, observing and executing, until the job is done. At the end, a single **Condense** phase absorbs all the interactions and lessons learned. This is how the agent learns a job for the first time.

### Level 2: Multi-Cycle (Structured Practice)
Once a job pattern is understood, it is elevated to a multi-cycle job. The agent creates a dedicated Plan file (`.md` or `.yaml`) and breaks the work into discrete chunks. The agent performs the job cleanly across multiple smaller OPEVC cycles, with intermediate Condense phases to refine the plan file as it works.

### Level 3: Plugin (Hardened Mastery)
The ultimate maturation of a job. A fully understood job is defined as its own Plugin within the `.claude/` directory. When this job is in focus, its plugin dynamically extends the controls, security guards, and XML coaching voices of the OPEVC phases to enforce absolute mastery of the task.

---

## 🚀 Getting Started

To install the Seed Agent into your Claude Code workspace, we provide an automated installer.

### 1. Clone the Repository
Clone this repository to your local machine:

```bash
git clone https://github.com/hadi-nayebi/seed-agent.git
cd seed-agent
```

### 2. Run the Installer
The installer script will safely copy the necessary plugins, agents, and knowledge structures into your target project directory. *Currently, installation is only supported on fresh, empty projects.*

```bash
./install.sh /path/to/your/new_project
```

### 3. Interact Naturally
Change into your newly initialized project directory and launch Claude Code with permission to run the Seed Agent's hooks:

```bash
cd /path/to/your/new_project
claude --allow-dangerously-skip-permissions
```

You do not need to run manual bash commands to use the Seed Agent. Simply give it a goal:

> *"I want to start a new project to build a landing page for my bakery."*

The `job_core` prompt-handler will automatically intercept your request, create a new job, and the `phasic_system` will drop the agent into the **Observe** phase to begin investigating.

---

## 🤝 Contributing

The Seed Agent is a living system. We welcome contributions that harden our guards, improve our coaching voices, or refine the cognitive architecture.

**License:** MIT
