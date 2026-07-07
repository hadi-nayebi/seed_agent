# Seed Agent: A Digital Cortex for Claude Code
**Version:** v1.0.0

Seed Agent is a **minimal, domain-agnostic digital cortex** that transforms Claude Code into a highly disciplined, self-improving personal assistant. It is not framed for just one profession; whether you need a dedicated project manager, a meticulous research assistant, or a senior software engineer, the Seed Agent provides the structural foundation to grow specialized capabilities tailored to your exact needs. 

It is a **deterministic lifecycle management system** implemented as a suite of Claude Code plugins.

## 📖 Terminology

- **OPEVC** — Observe, Plan, Execute, Verify, Condense (the five-phase cognitive cycle)
- **CLAUDE.md** — Working memory file; each directory where the agent works should have one
- **LLM** — Large Language Model (the AI agent that OPEVC compartments to prevent cognitive collapse)
- **CLI** — Command Line Interface (text-based interface for running commands and scripts)
- **JSON** — JavaScript Object Notation (lightweight data-interchange format used for job state)

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

## 💼 The Job System & Job Stages

Everything the Seed Agent does is tracked as a **Job**. When a job is in focus, every interaction you have with the agent—the initial prompt, follow-up Q&A, and real-time corrections—is collected by the job object. This feeds into the interaction summary, preventing context bloat while retaining critical user intent.

Jobs come in three formats, called **Stages**—each one a valid starting point. The Stage is decided in the **Plan** phase of the job's first cycle (`set-plan-file`: `false`, `.md`, or `.yaml`), not by automatic maturation. Soft coaching voices nudge the Stage 1 → 2 → 3 learning arc often—but not always—and moving a job between Stages is a decision you make *with* the agent, never an automatic flip.

### Stage 1: Single-Cycle (Highly Collaborative)
For a brand new type of task, the first cycle's Plan phase commits Stage 1, and the agent operates in a single, highly collaborative OPEVC cycle. The agent will go back and forth with you, observing and executing, until the job is done. At the end, a single **Condense** phase absorbs all the interactions and lessons learned. This is how the agent learns a job for the first time.

### Stage 2: Multi-Cycle (`.md` Plan)
For repeatable, structured work, the first cycle's Plan phase commits Stage 2 and the agent creates a dedicated `.md` Plan file in its first **Execute** phase. The plan persists across runs, absorbing experience each time the job runs again—the learning loop. Cycles 2..N then do the operational work cleanly across multiple smaller OPEVC cycles. Refinement of the plan happens at the start of each new run, not mid-job.

### Stage 3: Multi-Cycle (`.yaml` Plan)
Identical to Stage 2 in how it runs and completes—the only difference is the plan-file format. The `.yaml` plan additionally injects per-phase context by modifying the OPEVC phases' existing coaching voices (append, replace, or prepend) at each phase entry, tailoring the agent's guidance to the specific job.

*(A future **Stage 4**—a job that ships its own per-job plugin to add new guards and voices—is on the roadmap.)*

---

## 📁 Knowledge Directory Structure

The seed agent's knowledge base (`.claude/knowledge/`) contains 51 files across 7 directories:

```
.claude/knowledge/
├── 01-foundations/         # Seed agent philosophy, seven locks, core principles
│   ├── seven-locks.md
│   ├── what-is-a-seed-agent.md
│   ├── design-principles.md
│   ├── four-patterns.md
│   └── agent-equals-filesystem.md
├── 02-opevc-framework/     # OPEVC cognitive cycle — phases, transitions, gates
│   ├── overview.md
│   ├── patterns.md
│   ├── enforcement.md
│   └── phases/ (observe, plan, execute, verify, condense)
├── 03-job-system/          # Job lifecycle, state machine, multi-cycle patterns
│   ├── overview.md
│   ├── lifecycle.md
│   ├── schema.md
│   ├── multi-cycle-guide.md
│   └── core-primitive.md
├── 04-plugin-system/       # Plugin enforcement, guards, behavioral controls
│   ├── overview.md
│   ├── architecture.md
│   ├── standards.md
│   ├── assessment.md
│   └── development-guide.md
├── 05-patterns-and-practices/ # Prompt/response/observation fields, coherence
│   ├── enforcement-patterns.md
│   ├── gotchas.md
│   ├── cognitive-fields.md
│   └── architectural-patterns.md
├── 06-advanced-topics/     # Claude Code constraints, gotchas, workarounds
│   ├── gotchas.md
│   ├── platform-constraints.md
│   ├── voice-migration.md
│   └── complexity-lenses/ (9 lens files)
└── 07-templates/           # Copy-paste templates for jobs, plans, cycles
    └── multi-cycle-plan-template.md
```

### Where to Start

**New to the seed agent?** Read in this order:

1. `01-foundations/` — Learn what the seed agent IS and why it works
2. `03-job-system/` — Understand "everything is a job" and the lifecycle
3. `02-opevc-framework/` — Learn the cognitive rhythm: observe → plan → execute → verify → condense
4. `07-templates/` — When ready to run real work

**Experienced?** Jump to your topic:
- Plugin behavior → `04-plugin-system/`
- Phase transitions → `02-opevc-framework/`
- Platform limits → `06-advanced-topics/`

---

## 🤖 What the Seed Agent Has

The seed agent ships with these 11 plugins (13 total with 2 conceptual: job_archiver, job_blocker) — they ARE its identity:

- **plugin_integrity** — single-plugin editing, test-verified locking
- **job_core** — job lifecycle, stop blocking, dependencies
- **phase_observe** — observe phase guard and tracker
- **phase_plan** — plan phase guard and tracker
- **phase_execute** — execute phase guard and tracker
- **phase_verify** — verify phase guard and tracker
- **phase_condense** — condense phase guard, 7-step waterfall
- **phasic_system** — idle enforcement, phase/cycle tracking
- **interaction_summary** — summary chain enforcement
- **brain_guard** — behavioral enforcement
- **question_discipline** — structured questioning

**Conceptual plugins (part of the architecture, not shipped as code):**
- **job_archiver** — archives completed jobs
- **job_blocker** — blocks conflicting jobs

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

The `job_core` prompt-handler will automatically intercept your request, create a new job, and the `phasic_system` will lock it into the **IDLE** phase — from which you run `phase.sh advance` to begin your first **Observe** cycle.

---

## 🤝 Contributing

The Seed Agent is a living system. We welcome contributions that harden our guards, improve our coaching voices, or refine the cognitive architecture.

**License:** MIT
