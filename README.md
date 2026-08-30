# Seed Agent

Seed Agent is an open-source, user-owned agent harness being reimplemented for **OpenAI Codex CLI**.

> **Status:** foundation reset. This repository is not ready for installation or general use yet.

## What this repository is

This repository is the public development home for the Codex version of Seed Agent. It starts from the behavioral lessons and architectural patterns of an earlier private Seed implementation, but it is **not a source-code port** of that system.

The earlier implementation was built around Claude Code and accumulated a large experimental harness: persistent jobs, cognitive phases, behavioral plugins, local memory, deterministic guards, verification, condensation, questioning discipline, and governed self-modification. That implementation is now frozen and remains private. It is reference evidence for understanding what a capability was trying to accomplish, where it failed, and which abstractions survived use.

The Codex version will be implemented anew against Codex's actual primitives and constraints. Claude-specific files, Bash mechanisms, hook workarounds, thresholds, and directory conventions are not requirements here unless a new Codex design independently justifies them.

## Architectural direction

Seed separates three kinds of change:

1. **Runtime/framework primitives** — capabilities supplied by Codex or by small general mechanisms that must sit close to the runtime.
2. **Harness cognition** — reusable, inspectable behavior under `.codex/`: plugins, job semantics, phase cognition, memory behavior, guards, authority boundaries, verification, and other user-owned mechanisms.
3. **Job experience** — the user's concrete objectives, rulings, plans, artifacts, outcomes, and accumulated experience. The public distribution does not ship one person's private job history as canonical behavior.

The preferred placement is the most flexible layer that can honestly provide the required guarantee.

## Instructions are not working memory

The first private Seed mixed stable directory instructions and dynamic working memory inside `CLAUDE.md` files. This implementation starts with a cleaner separation:

- `AGENTS.md` is the Codex-native **stable/scoped instruction layer**.
- Dynamic local working memory is a **separate organ**. `WM.md` is the current candidate name, but its discovery rules, grammar, phase surface, persistence, and authority have **not been frozen or implemented yet**.
- Structured plugin/job state should live behind explicit owners and interfaces rather than being hidden inside instruction prose.

No `WM.md` files are created in this foundation reset because the contract should be designed before the format becomes accidental API.

## Repository shape

```text
seed_agent/
├── AGENTS.md                 builder/runtime orientation for Codex
├── .codex/
│   ├── AGENTS.md             harness boundary and compartment map
│   ├── context/              shared architectural language
│   ├── plugins/              reusable behavioral compartments
│   ├── knowledge/            durable verified cognition
│   └── jobs/                 deployment-specific job experience boundary
├── README.md
└── LICENSE
```

The empty-looking compartments are deliberate. They establish ownership boundaries, not finished implementation.

## Development method

Each substantial capability should be built as a narrow, reviewable slice:

1. Study the frozen reference implementation and relevant observed failures.
2. State the behavioral objective in implementation-independent language.
3. Inspect what Codex already provides natively.
4. Decide whether the capability belongs in runtime machinery, harness cognition, job experience, or an explicit composition of them.
5. Define state, interfaces, authority, failure behavior, and acceptance evidence.
6. Write focused tests for the approved contract.
7. Implement the smallest end-to-end behavior and learn from it before generalizing.

The goal is not to reproduce every historical mechanism. The goal is to discover and implement the stable abstractions of a user-owned digital cortex on Codex.

## Current non-goals

This reset intentionally does **not**:

- migrate the private Claude implementation into this repository;
- choose the complete plugin inventory;
- freeze the `WM.md` working-memory format;
- define every future PR or development milestone;
- ship example user jobs as canonical cognition; or
- provide an installer before there is a coherent implementation to install.

## License

MIT. See [LICENSE](LICENSE).
