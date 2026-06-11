# plugins/ — Seed Agent Plugin Registry
**Version:** v0.1.0

## Purpose

Self-protecting enforcement packages. Each plugin owns one concern, enforces it through hooks and scripts, and protects itself with tests.

## Plugins

(To be populated in cycle-2 EXECUTE via the `hydration-copy` callable. Expected 11 plugins from parent brain v0.3.0.)

| Plugin | Version | Purpose |
|--------|---------|---------|
| plugin_integrity | (pending hydration) | Foundational protection layer enforcing single-plugin editing via PLUGIN-LOCK |
| brain_guard | (pending hydration) | Context-aware self-compact + window-pin enforcement |
| phasic_system | (pending hydration) | OPEVC orchestrator (phase/cycle tracking, transitions) |
| phase_observe | (pending hydration) | OBSERVE phase enforcement |
| phase_plan | (pending hydration) | PLAN phase enforcement |
| phase_verify | (pending hydration) | VERIFY phase enforcement |
| phase_execute | (pending hydration) | EXECUTE phase enforcement |
| phase_condense | (pending hydration) | CONDENSE phase orchestrator |
| job_core | (pending hydration) | Multi-cycle job state and lifecycle |
| interaction_summary | (pending hydration) | User interaction summarization |
| question_discipline | (pending hydration) | AskUserQuestion gating for design questions |

Counts and versions populated post-hydration via `hydration-copy` callable.

## Plugin lifecycle

- Plugins are created via `[PLUGIN-LOCK] <name>` question mechanism. One plugin editable at a time.
- Plugin template at `plugin_integrity/template/` — add files there to standardize new plugins.

---Ob---

---Pl---

---Ex---

---Ve---
