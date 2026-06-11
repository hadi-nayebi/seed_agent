**Version:** v0.1.0

# Seed Agent Knowledge Migration Plan

## Goal
Migrate + resynthesize knowledge from private `.claude/knowledge/` to `./seed_agent/.claude/knowledge/` — generic, well-structured, optimized for new users and agent self-growth.

---

## Source Analysis Summary

**Private repo:** `/home/hadinayebi/CodingProjects/hadosh_academy/.claude/knowledge/`
- **227 total files**
- **142 generic files (63%)** — reusable seed agent architecture knowledge
- **81 specific files (36%)** — Hadosh Academy project-specific (session archives, reviews)
- **8 mixed files (4%)** — contain both

**Files to migrate:** All 142 generic files, rewritten to be project-agnostic.

---

## New Directory Structure (Optimized for New Users)

```
seed_agent/.claude/knowledge/
├── README.md                    # Welcome + how to navigate
├── CLAUDE.md                    # Agent index (topic table)
│
├── 01-foundations/              # What is a seed agent? Philosophy.
│   ├── CLAUDE.md
│   ├── what-is-a-seed-agent.md
│   ├── design-principles.md
│   ├── four-patterns.md
│   ├── seven-locks.md
│   └── agent-equals-filesystem.md
│
├── 02-opevc-framework/          # OPEVC cycle, phases, transitions
│   ├── CLAUDE.md
│   ├── overview.md
│   ├── phases/
│   │   ├── observe.md
│   │   ├── plan.md
│   │   ├── execute.md
│   │   ├── verify.md
│   │   └── condense.md
│   ├── patterns.md
│   └── enforcement.md
│
├── 03-job-system/               # Jobs, lifecycle, schema
│   ├── CLAUDE.md
│   ├── overview.md
│   ├── core-primitive.md
│   ├── lifecycle.md
│   ├── schema.md
│   └── multi-cycle-guide.md
│
├── 04-plugin-system/            # Plugin architecture + development
│   ├── CLAUDE.md
│   ├── overview.md
│   ├── architecture.md
│   ├── standards.md
│   ├── assessment.md
│   └── development-guide.md
│
├── 05-patterns-and-practices/   # Reusable patterns for agents
│   ├── CLAUDE.md
│   ├── architectural-patterns.md
│   ├── cognitive-fields.md
│   ├── enforcement-patterns.md
│   └── gotchas.md
│
├── 06-advanced-topics/          # Complexity, voice, constraints
│   ├── CLAUDE.md
│   ├── complexity-lenses/
│   │   ├── index.md
│   │   ├── growth-lens.md
│   │   ├── task-blueprint-lens.md
│   │   ├── cognitive-gearbox-lens.md
│   │   ├── mental-models-lens.md
│   │   ├── nervous-system-lens.md
│   │   ├── memory-metabolism-lens.md
│   │   ├── symbiotic-interface-lens.md
│   │   ├── modular-organ-lens.md
│   │   ├── environmental-awareness-lens.md
│   │   └── resilience-lens.md
│   ├── voice-migration.md
│   └── platform-constraints.md
│
└── 07-templates/                # Plan templates, examples
    ├── CLAUDE.md
    └── multi-cycle-plan-template.md
```

---

## Phase 1: Multi-Agent Initial Migration (7 Agents in Parallel)

| Agent ID | Name | Scope | Source Directories |
|----------|------|-------|-------------------|
| **A1** | Foundations | Rewrite `seed-agent-philosophy/` to generic | `seed-agent-philosophy/` |
| **A2** | OPEVC | Consolidate 70+ `opevc/` files into structured docs | `opevc/`, `cognitive-fields/` |
| **A3** | Jobs | Migrate job system content | `job-system/`, `job-schema/`, `job-lifecycle/` |
| **A4** | Plugins | Migrate plugin architecture/standards/assessment | `plugin-architecture/`, `plugin-standard/`, `plugin-assessment/`, `plugin-integrity/` |
| **A5** | Patterns | Curate reusable patterns | `architectural-patterns/`, selected `opevc/` patterns |
| **A6** | Advanced | Migrate complexity lenses, voice, constraints | `seed_agent_complexity/`, `voice-migration/`, `platform-constraints/`, `claude-code-gotchas/` |
| **A7** | Structure | Create README.md, CLAUDE.md, templates | `plans/.archive/`, new structure setup |

### Agent Task Template (each agent must):
1. Read all assigned source files from private `.claude/knowledge/`
2. Rewrite ALL content to be **completely generic** (remove all Hadosh Academy references, job IDs, cycle numbers, user preferences)
3. Reset all version numbers to `v0.1.0`
4. Write to correct `seed_agent/.claude/knowledge/` path per new structure
5. Replace "Hadosh Academy" / "hadosh_academy" with "your project" / "your seed agent" generically
6. Replace specific job IDs (e.g., 1775956039353047023) with generic examples (e.g., `<job-id>`)
7. Report: file list written + word count per file

---

## Phase 2-6: Five Iterative Improvement Cycles

Each iteration = **5 review agents** → **main session consolidation** → **5 fix agents**

### Review Agents Per Iteration

| Agent ID | Name | Focus |
|----------|------|-------|
| **R1** | Completeness | Missing topics? Gaps vs private repo? |
| **R2** | Clarity | Readable for new users? Jargon explained? |
| **R3** | Consistency | Contradictions? Terminology consistent? |
| **R4** | Structure | Does structure help new users? Wrong placements? |
| **R5** | Generic | Any remaining project-specific content? |

### Review Agent Task Template:
1. Read ALL files in `seed_agent/.claude/knowledge/`
2. Check assigned focus area thoroughly
3. Produce specific findings: file path + issue + suggested fix
4. Rate overall quality 1-10
5. List top 3 improvements needed

### Consolidation (Main Session):
- Read all 5 review reports
- Produce consolidated improvement list with priorities
- Update this plan's progress section
- Dispatch fix agents

### Fix Agents Per Iteration

| Agent ID | Name | Fix Scope |
|----------|------|-----------|
| **F1** | Foundations+OPEVC | Fixes for `01-foundations/`, `02-opevc-framework/` |
| **F2** | Jobs+Plugins | Fixes for `03-job-system/`, `04-plugin-system/` |
| **F3** | Patterns+Advanced | Fixes for `05-patterns-and-practices/`, `06-advanced-topics/` |
| **F4** | Structure | Fixes for README.md, CLAUDE.md, links, cross-references |
| **F5** | New-Content | Add missing topics discovered by reviewers |

---

## Phase 7: Cross-Iteration Re-Evaluation

After 5 iterations, launch **3 fresh perspective agents** that haven't seen the work:

| Agent ID | Name | Focus |
|----------|------|-------|
| **FE1** | Fresh-Eyes-1 | New user simulation — can I understand and customize the seed agent? |
| **FE2** | Fresh-Eyes-2 | Architectural coherence — does the knowledge accurately describe the system? |
| **FE3** | Fresh-Eyes-3 | Growth readiness — can the seed agent use this to grow itself? |

Apply fixes from these agents in a final cleanup pass.

---

## Phase 8: Final Validation

Single agent runs this checklist:

| # | Criterion | Status |
|---|-----------|--------|
| 1 | All version numbers = `v0.1.0` | ☐ |
| 2 | Zero Hadosh Academy references | ☐ |
| 3 | All internal links valid | ☐ |
| 4 | No files in wrong directories | ☐ |
| 5 | README.md + CLAUDE.md present and accurate | ☐ |
| 6 | Word counts within bounds (CLAUDE.md ≤ 800) | ☐ |
| 7 | New user can understand: what is this, how does it work, how do I customize it? | ☐ |
| 8 | All 142 generic source files evaluated/migrated | ☐ |
| 9 | 70+ OPEVC files consolidated into ~6 focused documents | ☐ |
| 10 | 10 complexity lenses properly structured | ☐ |

---

## Progress Tracking

### Phase 1: Initial Migration
| Agent | Status | Files Written | Notes |
|-------|--------|--------------|-------|
| A1-Foundations | ☐ Pending | 0 | |
| A2-OPEVC | ☐ Pending | 0 | |
| A3-Jobs | ☐ Pending | 0 | |
| A4-Plugins | ☐ Pending | 0 | |
| A5-Patterns | ☐ Pending | 0 | |
| A6-Advanced | ☐ Pending | 0 | |
| A7-Structure | ☐ Pending | 0 | |

### Phase 2: Iteration 1
| Step | Status | Notes |
|------|--------|-------|
| Review (R1-R5) | ☐ Pending | |
| Consolidation | ☐ Pending | |
| Fix (F1-F5) | ☐ Pending | |

### Phase 3: Iteration 2
| Step | Status | Notes |
|------|--------|-------|
| Review (R1-R5) | ☐ Pending | |
| Consolidation | ☐ Pending | |
| Fix (F1-F5) | ☐ Pending | |

### Phase 4: Iteration 3
| Step | Status | Notes |
|------|--------|-------|
| Review (R1-R5) | ☐ Pending | |
| Consolidation | ☐ Pending | |
| Fix (F1-F5) | ☐ Pending | |

### Phase 5: Iteration 4
| Step | Status | Notes |
|------|--------|-------|
| Review (R1-R5) | ☐ Pending | |
| Consolidation | ☐ Pending | |
| Fix (F1-F5) | ☐ Pending | |

### Phase 6: Iteration 5
| Step | Status | Notes |
|------|--------|-------|
| Review (R1-R5) | ☐ Pending | |
| Consolidation | ☐ Pending | |
| Fix (F1-F5) | ☐ Pending | |

### Phase 7: Fresh Eyes Review
| Agent | Status | Notes |
|-------|--------|-------|
| FE1 | ☐ Pending | |
| FE2 | ☐ Pending | |
| FE3 | ☐ Pending | |
| Final Fixes | ☐ Pending | |

### Phase 8: Final Validation
| Status | Notes |
|--------|-------|
| ☐ Pending | |

---

## Rewrite Rules (NON-NEGOTIABLE)

1. **Generic only:** Replace all specific project references with generic equivalents
   - `hadosh_academy` → `your_project` or remove entirely
   - `Hadosh Academy` → `your project` or `the seed agent project`
   - Job IDs like `1775956039353047023` → `<job-id>` or generic example
   - Cycle numbers → generic references or remove
   - User preferences → generic guidance

2. **Version reset:** All files start at `v0.1.0`

3. **Consolidation:** 70+ OPEVC files → ~6 focused documents
   - Group by topic, not by individual lesson
   - Create coherent narratives, not disjointed notes

4. **New user focus:** Write for someone who has NEVER seen this system
   - Define all acronyms on first use
   - Explain WHY, not just WHAT
   - Include examples for every concept

5. **Self-growth ready:** The seed agent must be able to use this knowledge to:
   - Understand its own architecture
   - Customize existing plugins
   - Create new plugins
   - Manage its own growth through OPEVC cycles
