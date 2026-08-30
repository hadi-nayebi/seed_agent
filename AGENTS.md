# Seed Agent — Codex foundation

This repository is the public Codex-native reimplementation of Seed Agent.

## Source-of-truth boundary

- The private Hadosh Academy Claude Seed is a **frozen reference implementation**. Use it to study behavioral objectives, design history, failures, and patterns. Do not mechanically port its Bash code, `.claude/` layout, `CLAUDE.md` conventions, thresholds, or Claude-specific workarounds.
- This repository defines the Codex implementation. Current checked-in contracts here outrank historical implementation details when the two differ.
- Do not present planned behavior as implemented behavior.

## Before substantial work

1. Read `.codex/AGENTS.md`.
2. Read `.codex/context/INDEX.md` and the relevant context file completely.
3. Identify the capability's behavioral objective before choosing files or mechanisms.
4. Inspect Codex-native primitives before recreating a historical workaround.
5. Keep a clear boundary between runtime mechanism, reusable harness cognition, and user/job experience.

## Design rules

- Prefer stable abstractions over historical mechanism names.
- One bounded behavioral concern should have one clear owner.
- State should have an owner and an explicit interface; avoid cross-component raw-state coupling.
- Hard controls need explicit recovery behavior so an invariant cannot silently create a deadlock.
- Verification evidence should be structurally distinguishable from the behavior being verified when practical.
- User authority must remain explicit for consequential harness changes.
- The public Seed may be cloned as a mature base, but its job history and user-specific experience are not canonical public cognition.

## Instruction / working-memory split

`AGENTS.md` files are the stable scoped instruction layer for Codex.

Dynamic local working memory is intentionally separate. `WM.md` is the current candidate convention, but no grammar or automatic discovery behavior is approved yet. Do not start placing OPEVC-style mutable footers into `AGENTS.md`, and do not create a de facto `WM.md` format through one-off implementation.

## Change posture

This foundation is deliberately sparse. Do not pre-create a large plugin catalog or migration scaffold. Add a compartment only when a real capability study gives it an objective, boundary, interface, and acceptance criteria.
