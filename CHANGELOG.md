# Changelog

All notable changes to Claude LinkedIn Automation are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0] - 2026-03-24

### Changed

- **Complete rewrite based on 12+ weeks of production validation.** Every rule, pattern, and template has been tested on a live profile with 21 automations in production.

- **SKILL.md overhaul:**
  - Added **Step 8: The Feedback Loop** — how to read weekly audit reports and adjust rules in real time
  - Rewrote **Production Failure Handling** section with real incident taxonomy (detection flags, engagement collapse, comment rejection patterns)
  - Replaced abstract guidance with **empirical justification** for every rule (e.g., "Why max 15 comments/session? Because 16+ triggered rate-limit warnings in weeks 3, 7, and 10")
  - Added **Non-Detection Index (NDI) formula** with scoring rubric

- **anti-detection-playbook.md restructure:**
  - Reorganized 7 rules by **real impact** (detection vectors that actually got flagged in production, not theoretical risks)
  - Added **"What Actually Got Flagged" section** with day/incident data
  - Included detection scoring matrix: how each rule violation affects your NDI
  - Added escalation protocol: what to do when you hit a warning

- **tov-framework.md expanded:**
  - Replaced abstract "4 axes" with **emotional register mapping** for each pillar day
  - Added **10 personal rhetorical patterns** extracted from Giovanni's real comments
  - Included **vocabulary examples** with frequency notes (e.g., "sensibilmente" appears 12x in 8 weeks vs "significativamente" 0x)
  - Added **red flags** (phrases that sound AI-generated in Italian context)

- **content-templates.md overhauled:**
  - Monday pillar renamed to **"Diario di Bordo di Claude"** (Behind the Automation) with rubric
  - All 7 days now include **real worked examples** with engagement metrics
  - Added **micro-post template** (200–400 characters) with 3 examples
  - First-comment templates now show actual link strategy (Lunedì → blog, Giovedì → prenota, Domenica → guida)
  - Included **anti-pattern examples** (what NOT to do, with reason)

- **New files added:**
  - `CONTRIBUTING.md` — how to submit new anti-detection rules with empirical evidence
  - `CHANGELOG.md` — this file
  - Examples updated with engagement metrics and performance notes

### Added

- **Humanization rules:** 5 concrete checks to prevent AI-generated tone (parentheticals, varied sentence length, vulnerability posts, informal markers)
- **NDI calculation guide:** Composite metric for measuring profile "humanness"
- **Daily audit template:** Spreadsheet format for tracking engagement patterns, detection warnings, and NDI progression
- **Production incident taxonomy:** Map of real failures (rate limits, comment rejections, engagement collapse, detection flags) with remediation steps
- **Engagement scoring rubric:** How to evaluate comment quality and adjust daily sessions

### Fixed

- Removed overly cautious advice that was contradicted by production data (e.g., "never comment above 9 AM" — proven false)
- Clarified ambiguous rules from v1.0 (e.g., "be yourself" → concrete register mapping per pillar)
- Added context for why certain LinkedIn limits exist (e.g., the 15-comment-per-session rule is based on 8 weeks of testing, not best guesses)

---

## [1.0.0] - 2026-03-24

### Added

- **Initial release** with complete skill system for autonomous LinkedIn automation
- **SKILL.md:** 6-step setup guide covering Identity, Strategy, Content, Engagement, Measurement, and Iteration
- **References:**
  - `tov-framework.md` — Tone of voice system (4 axes, vocabulary whitelists/blacklists, rhetorical patterns)
  - `anti-detection-playbook.md` — 7 anti-detection rules with methodology
  - `content-templates.md` — 7-day pillar calendar with example posts
- **Examples:**
  - `weekly-plan.md` — Full weekly content plan with 7 posts + auto-comments
  - `engagement-session.md` — Example 25-minute engagement session with scoring
- **Documentation:**
  - README.md with results summary, quick start, and key concepts
  - Legal disclaimer in README
- **Results metadata:** 12+ weeks of production data from 21 active automations
  - 45 → 200+ follower growth
  - Zero detection incidents
  - Average engagement score 8.2/10
  - Non-Detection Index 5.0+

### Foundation

This release is based on **12+ weeks of daily operation** on a live LinkedIn profile in the Italian AI/B2B niche. Every rule, pattern, and metric in this skill comes from production testing, not theory.

Key evidence:
- 7 posts per week, 0 missed publications
- Daily 25-minute engagement sessions with structured anti-detection rules
- Daily audit reports tracking NDI, engagement quality, and detection incidents
- Real conversations with professionals who had no idea the account was automated

---

## Versioning

This project uses **Semantic Versioning**:
- **MAJOR** = Breaking changes to core methodology or significant new evidence requiring skill rewrites
- **MINOR** = New anti-detection rules, templates, or language support
- **PATCH** = Bug fixes, clarifications, documentation improvements

---

## Future Roadmap

### [2.1.0] — Planned
- **Multi-language support:** Translations for German, Spanish, French, Portuguese
- **Niche-specific templates:** Tech, Finance, HR, Consulting, Creator economy
- **Extended case studies:** Results from 3+ production deployments with anonymized metrics

### [3.0.0] — Exploration
- **Real-time detection monitoring:** Automated alerts for NDI drops or warning signs
- **Sentiment analysis for comments:** ML-based scoring of comment quality
- **Multi-profile management:** Scaling the system to 3+ accounts with isolated persona systems

---

**Last updated:** 2026-03-24
**Maintained by:** Giovanni Liguori
**Data sources:** 12+ weeks of production LinkedIn automation (21 active automations, daily audits, weekly reports)
