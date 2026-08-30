# Seed harness boundary

`.codex/` is the public cognition layer for the Codex Seed Agent.

Only create a child compartment when a real capability needs a durable owner. Do not mirror the frozen Claude Seed directory tree or pre-create historical plugin names.

## Current compartment

- `context/` — canonical architecture and design decisions required before implementation.

Future plugin, knowledge, job, or other compartments should be created only when their first implemented capability establishes a clear role and boundary.

## Instructions and working memory

`AGENTS.md` carries stable scoped instructions.

Dynamic local working memory is separate. `WM.md` is the current candidate name, but its grammar, discovery, authority, refresh, persistence, and phase interaction are not defined yet. Do not use `AGENTS.md` as mutable phase scratch space and do not create an accidental `WM.md` standard through one-off work.

## Implementation rule

Start from one behavioral objective. Study the frozen reference and Codex-native capabilities, then define ownership, state, interfaces, authority, failure/recovery, and acceptance evidence before implementation.

Historical implementation anatomy is evidence, not specification.
