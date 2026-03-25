# Changelog

Format: [Keep a Changelog](https://keepachangelog.com/en/1.0.0/). Versioning: [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [3.1.0] - 2026-03-25

### Added

- **Wizard Interaction Flow** (P1 fix): New section at top of SKILL.md with explicit turn-by-turn instructions for Claude on how to guide the user through each phase. Questions are grouped (4 turns for Phase 1), with "Wait for answers" gates between each group. Claude no longer has to improvise the conversation flow.

- **Identity Document Generation Bridge** (P3 fix): After collecting all 15 answers, Claude now generates a complete CLAUDE.md using a structured template (Who, Archetype, TOV rules, Vocabulary, Audience, Positioning, Blacklist). The user reviews and approves before Phase 2 begins.

- **Explicit Approval Gate in Phase 4** (P6 fix): Phase 4 now includes a HARD GATE instruction — Claude must present the task table, ask for changes, and wait for explicit "approved" before creating any tasks. Includes list of acceptable approval phrases.

- `modules/linkedin.md` added to Reference Files table

- **Update Flow** (new section): Users with existing setups can update to new skill versions without re-running the wizard. Claude detects current state, diffs changes, presents an update plan, and applies updates after approval. Includes version tracking in CLAUDE.md.

- **Environment Compatibility** (new section): Documents differences between Claude Cowork and Claude Code. Cowork uses `create_scheduled_task` and built-in Chrome MCP; Code uses crontab/Cloud Scheduler and manual MCP config. Wizard (Phase 1-4) works identically in both. Includes recommended setup by use case.

### Changed

- Version bumped to 3.1.0
- SKILL.md restructured: wizard flow section precedes all phase content

---

## [3.0.0] - 2026-03-25

### Changed

- **SKILL.md rewritten as 5-phase guided wizard:**
  - Phase 1: Identity & Voice (15-question questionnaire)
  - Phase 2: Strategy & Content (pillar calendar, post format, humanization)
  - Phase 3: Engagement & Anti-Detection (rules, epistemic verification)
  - Phase 4: Task Plan Review & Approve (user sees all tasks before creation)
  - Phase 5: Create Tasks & Iterate (deploy, monitor, adjust)

- **Task approval workflow (Phase 4):** Nothing is automated until user reviews and approves the task plan table

- **New reference: `references/task-catalog.md`** — Full prompt templates for all 10 LinkedIn tasks with {{PLACEHOLDER}} customization

- **Modular architecture:** `modules/linkedin.md` contains full module configuration

### Fixed — Data Integrity

- Duration: "12+ weeks" → "22 days (G0-G22)" (verified production period)
- Followers: "45 → 200+" → "45 → 55" (verified from weekly reports)
- Automations: "21" → "10 LinkedIn tasks" (scope narrowed to validated domain)
- Engagement score: "8.2/10" → "8.0/10" (verified average)
- GitHub URL: fixed from `giovanniliguori/` to `videomakingio-gif/`

---

## [2.0.0] - 2026-03-24

### Changed

- Complete rewrite based on 22 days of production validation
- Added Identity Questionnaire, Epistemic Verification Gate
- anti-detection-playbook.md: reorganized by real impact
- tov-framework.md: emotional register mapping, 10 personal rhetorical patterns
- content-templates.md: "Diario di Bordo" rubric, worked examples

### Added

- CONTRIBUTING.md, CHANGELOG.md
- `references/epistemic-verification.md` — 7-checkpoint verification gate
- Humanization rules, NDI formula, daily audit template
- DM Strategy, Failure Cases with recovery protocol

---

## [1.0.0] - 2026-03-24

### Added

- Initial release: SKILL.md, references (tov-framework, anti-detection, content-templates)
- README with legal disclaimer
- Examples: weekly-plan.md, engagement-session.md

---

**Last updated:** 2026-03-25
