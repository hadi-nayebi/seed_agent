# .claude/ — Seed Agent Brain
**Version:** v0.1.0

## Purpose

The seed agent's brain directory. Contains long-term knowledge and hardened behavioral controls (plugins).

This is a fresh brain, hydrated from the parent project's brain (v0.3.0) per the migration plan. Cycle-2 Foundation Hydration populates this directory.

## Components

### knowledge/
Long-term condensed knowledge organized by topic. Written during CONDENSE phases. The sole reference for building and decision-making.

(To be populated in subsequent migration cycles.)

### plugins/
Self-protecting enforcement packages. Each plugin owns one concern, enforces it through hooks and scripts, and protects itself with tests. See `plugins/CLAUDE.md` for the full guide.

(11 plugins to be hydrated in cycle-2 EXECUTE: plugin_integrity, brain_guard, phasic_system, phase_observe, phase_plan, phase_verify, phase_execute, phase_condense, job_core, interaction_summary, question_discipline.)

### settings.local.json
Hook registrations for plugins. Sanitized template version (no project-specific paths). Authored in cycle-5 per migration plan.

## Brain Maturation

- **Soft:** voice injections in plugin hooks → LLM-interpreted, probabilistic
- **Hard:** plugins → code-executed, deterministic, self-protecting, test-verified
- Controls migrate from soft guidance to hard enforcement as patterns prove reliable

## Migration provenance

Hydrated from `your_project/.claude/` (parent project) via the named `hydration-copy` callable invoked in cycle-2 EXECUTE of the migration job. Version pins preserved per source. See `seed_agent/MIGRATION_PLAN.md` for the full migration narrative.

---Ob---

---Pl---

---Ex---

---Ve---
