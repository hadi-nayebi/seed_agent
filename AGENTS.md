# Seed Agent — Codex patterns

This repository accumulates Codex-specific architectural context and selectively reusable building blocks for Hadosh Academy. Each user and their agent derive their own harness; they may adapt components here or build from the Academy writings entirely from scratch. Do not impose a roadmap toward one standard installable harness or treat intentional sparseness as a defect.

The private Hadosh Academy Claude Seed is frozen reference evidence. Study its behavioral objectives, failures, and patterns; do not mechanically port its Bash code, `.claude/` layout, `CLAUDE.md` conventions, thresholds, or Claude-specific workarounds.

Before substantial work:

1. Read `.codex/AGENTS.md` and `.codex/context/INDEX.md`.
2. Define the behavioral objective before choosing files or mechanisms.
3. Inspect Codex-native primitives before recreating historical workarounds.
4. Keep runtime mechanism, reusable harness cognition, and user/job experience distinct.
5. Do not present planned behavior as implemented behavior.

`AGENTS.md` is the stable scoped instruction layer. Dynamic working memory is separate; `WM.md` is only a candidate name until its contract is deliberately defined.

Keep the repository sparse. Add a compartment only when a real capability gives it a clear objective, boundary, interface, and acceptance criteria.
