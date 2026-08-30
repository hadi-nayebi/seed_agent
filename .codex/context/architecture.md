# Codex Seed architecture charter

**Status:** foundation contract; implementation largely absent

## Identity

Seed Agent is a public, user-owned cognitive harness for Codex CLI. The active model animates the system but does not by itself own the Seed's durable identity, memory, behavioral controls, authority, or accumulated job experience.

## Reference lineage

An earlier private Seed was built around Claude Code and is now frozen. It remains useful because it records a substantial behavioral experiment: persistent jobs, cognitive phases, plugins, memory, guards, verification, condensation, questioning, and self-modification were exercised together and repeatedly revised.

That repository is evidence, not source material to transplant. For each capability, study what problem it solved, what failure produced it, which parts were platform compensation, and which behavioral abstraction still deserves to exist on Codex.

## Three operational layers

### Codex runtime/framework

Owns or supplies general execution machinery: model/session loop, tools, native instructions, permissions, sandboxing, events/hooks where available, concurrency, and other runtime primitives.

A general deterministic primitive should sit as close to the runtime as necessary, but Seed-specific meaning should not be hidden inside lower-level machinery merely because it can be implemented there.

### Harness cognition

Lives primarily under `.codex/`. It owns reusable Seed-specific behavior: plugin contracts, job semantics, phase cognition, memory behavior, guards, verification structures, authority boundaries, condensation, and cultivated methods.

This layer should remain inspectable and evolvable by the user and their agent.

### Job experience

Owns concrete work: objectives, user rulings, interactions, plans, artifacts, outcomes, and experience from real runs.

Job experience may generate evidence for improving reusable cognition, but one successful job does not silently become global policy.

## Placement rule

Place a capability in the most flexible layer that can honestly provide its guarantee.

A mixed capability is valid when ownership is explicit. Name which layer owns the general mechanism, reusable cognitive policy, instance state, interfaces, and change authority.

## Stable instructions versus working memory

The Claude reference used directory-local `CLAUDE.md` files for both relatively stable instructions and dynamic OPEVC working memory. Codex gives us an opportunity to separate those roles.

### Instruction layer

`AGENTS.md` is the Codex-native scoped instruction mechanism. It should carry relatively stable rules, architecture, and local operating boundaries.

### Working-memory layer

A separate local-memory organ will carry dynamic, directory-relevant cognition that can grow during work and later be condensed. `WM.md` is the current candidate name.

The following are **not decided yet**:

- exact `WM.md` grammar;
- whether every directory has one or only selected directories;
- discovery and injection triggers;
- precedence and provenance rules;
- OPEVC or other phase-specific writable regions;
- interaction with compaction/session continuation;
- concurrency and refresh behavior; and
- whether some guarantees require a Codex runtime extension rather than harness-only code.

Until those are deliberately specified, no `WM.md` format is canonical.

## Stable abstraction candidates from the reference

These are study targets, not an implementation checklist:

- durable jobs;
- bounded behavioral plugins;
- explicit cognitive modes/phases;
- local and durable memory separation;
- soft guidance versus deterministic hard controls;
- structurally independent verification;
- authority boundaries for self-modification;
- context/continuation management;
- recovery paths for hard invariants; and
- human-legible architecture that remains machine-enforceable.

The names, counts, scripts, thresholds, file layout, and exact state machines used by the frozen implementation are not automatically stable abstractions.

## Public distribution model

The eventual public Seed should be a real cloneable base, not merely documentation. A user may learn its existing architecture and then customize jobs and cognition locally.

Direct client/training work may instead build a new harness from a thinner starting point so the user learns the architecture while participating in its construction. These are different onboarding paths, not contradictory ownership models.

## Current non-decisions

This foundation does not yet choose:

- the first plugin to implement;
- the final plugin anatomy;
- whether OPEVC remains the exact Codex phase system;
- the final job lifecycle or storage schema;
- the `WM.md` contract;
- an installer or package format;
- the extent, if any, of Codex runtime modification; or
- a complete PR roadmap.

Those decisions should emerge from narrow capability studies and real Codex behavior rather than from historical inertia.
