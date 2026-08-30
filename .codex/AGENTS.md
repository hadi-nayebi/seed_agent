# Seed harness boundary

`.codex/` is the public, inspectable cognition layer for the Codex Seed Agent.

It is not a dump of the frozen Claude Seed and it is not a container for arbitrary project files. Each child compartment must have a durable cognitive role.

## Current compartments

- `context/` — canonical shared architectural language and explicit design decisions.
- `plugins/` — reusable behavioral or operational compartments. Empty at foundation by design.
- `knowledge/` — durable verified lessons and reusable evidence. Empty at foundation by design.
- `jobs/` — boundary for concrete deployment-specific job experience. The public repository ships no personal job state as canonical cognition.

## Instruction hierarchy

`AGENTS.md` files carry stable scoped instructions. They should remain concise enough to be useful as always-on guidance.

Dynamic local working memory is a separate concern. The current candidate file name is `WM.md`; its grammar, authority, discovery, refresh, phase interaction, and persistence rules remain undecided. Do not use `AGENTS.md` as mutable phase scratch space merely because it is automatically loaded by Codex.

## Plugin direction

A plugin is expected to begin from one bounded behavioral objective, not from a copied directory template. Before implementation, define at least:

- objective and exclusions;
- state or contract boundary;
- public interface;
- relevant sensors/events or explicit no-sensor rationale;
- actions and deterministic controls;
- user-facing guidance where needed;
- safe failure and recovery behavior;
- dependencies; and
- executable acceptance evidence.

The exact Codex plugin anatomy is not frozen yet. Historical Claude anatomy and other harness implementations are comparative evidence, not specifications.

## Jobs

The reusable cognition of how jobs behave belongs in the harness layer. A particular user's job objectives, interactions, plans, artifacts, outcomes, and accumulated experience belong to that deployment's job layer.

Do not bake Hadosh Academy website jobs or any client's private job history into the generic public Seed.
