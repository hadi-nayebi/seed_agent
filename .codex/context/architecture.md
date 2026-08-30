# Codex Seed architecture

**Status:** foundation contract; implementation not started.

## Identity

Seed Agent is a public, user-owned cognitive harness for Codex CLI. The model animates the system; durable identity, memory, behavior, authority, and job experience remain inspectable outside the model.

## Reference lineage

The earlier private Claude Seed is frozen. It is useful as evidence of behavioral objectives, failures, and design evolution, not as source code or file structure to transplant.

For each capability, ask what problem it solved, which parts were platform-specific compensation, and what abstraction still deserves to exist on Codex.

## Three layers

1. **Codex runtime/framework** — general execution primitives supplied by Codex or mechanisms that must sit close to the runtime.
2. **Harness cognition** — reusable Seed-specific behavior, kept inspectable under `.codex/` or another explicitly justified harness compartment.
3. **Job experience** — concrete user objectives, rulings, plans, artifacts, outcomes, and accumulated experience.

Place a capability in the most flexible layer that can honestly provide its guarantee. Mixed implementations are valid only when each layer's ownership and interface are explicit.

## Instructions and working memory

The Claude reference used `CLAUDE.md` for both stable instructions and dynamic working memory. Codex Seed separates those roles.

- `AGENTS.md` is the stable scoped instruction layer.
- Dynamic local working memory is a separate future organ. `WM.md` is the current candidate name.

No `WM.md` grammar, discovery rule, phase layout, precedence rule, persistence model, or runtime integration is canonical yet.

## Development rule

Do not begin from a historical plugin name or directory template. Begin from one bounded behavioral objective:

1. study reference behavior and failures;
2. inspect Codex-native primitives;
3. define ownership, state, interfaces, authority, failure and recovery;
4. define executable acceptance evidence; and
5. implement the smallest end-to-end slice.

## Current non-decisions

The foundation does not yet choose the first plugin, final plugin anatomy, exact phase system, job schema, working-memory contract, installer, runtime extensions, or full PR roadmap. Those decisions should come from narrow capability studies rather than historical inertia.
