# Seed Agent

Seed Agent is an open-source, user-owned agent harness being reimplemented for **OpenAI Codex CLI**.

> **Status:** foundation only. Not ready for installation or general use.

## What this repository is

This is the public development home for the Codex version of Seed Agent.

An earlier private Seed was built around Claude Code and is now frozen. It remains reference evidence for understanding behavioral objectives, failures, and architectural patterns, but this repository does not port its Bash code, `.claude/` layout, `CLAUDE.md` conventions, thresholds, or Claude-specific workarounds.

The Codex implementation will be designed against Codex's own primitives and constraints.

## Architecture

Seed separates three layers:

1. **Codex runtime/framework** — general execution primitives.
2. **Harness cognition** — reusable, inspectable Seed behavior under `.codex/` or another explicitly justified harness compartment.
3. **Job experience** — a user's concrete objectives, rulings, plans, artifacts, outcomes, and accumulated experience.

The preferred placement is the most flexible layer that can honestly provide the required guarantee.

## Instructions are not working memory

The Claude reference combined stable directory instructions and dynamic working memory in `CLAUDE.md` files. Codex Seed starts with those roles separated:

- `AGENTS.md` — stable scoped instructions.
- `WM.md` — current candidate for a future dynamic local working-memory organ; not yet specified or implemented.

## Current repository shape

```text
seed_agent/
├── AGENTS.md
├── .codex/
│   ├── AGENTS.md
│   └── context/
├── README.md
└── LICENSE
```

New compartments are added only when a real capability needs them.

## Development method

For each substantial capability:

1. Study the frozen reference behavior and failures.
2. State the behavioral objective without historical implementation assumptions.
3. Inspect Codex-native capabilities.
4. Define ownership, state, interfaces, authority, failure/recovery, and acceptance evidence.
5. Implement the smallest end-to-end slice and learn from it before generalizing.

The goal is not to reproduce every historical mechanism. The goal is to discover and implement stable abstractions of a user-owned digital cortex on Codex.

## Contributing

Seed Agent is still a sparse foundation. Conceptual questions and generalized field reports can
begin on the [project discussion](https://hadi-nayebi.github.io/projects/seed-agent.html);
architecture studies, corrections, and approved candidate changes belong here. Read
[CONTRIBUTING.md](CONTRIBUTING.md) before opening an issue or pull request.

## License

MIT. See [LICENSE](LICENSE).
