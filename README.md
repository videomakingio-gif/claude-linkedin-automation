<p align="center">
  <h1 align="center">Claude LinkedIn Automation</h1>
  <p align="center">
    Autonomous LinkedIn management, validated in production.<br>
    22 days. 10 tasks. Zero detection.
  </p>
</p>

<p align="center">
  <a href="#install">Install</a> &nbsp;&bull;&nbsp;
  <a href="#how-it-works">How It Works</a> &nbsp;&bull;&nbsp;
  <a href="#results">Results</a> &nbsp;&bull;&nbsp;
  <a href="#anti-detection">Anti-Detection</a> &nbsp;&bull;&nbsp;
  <a href="#compatibility">Compatibility</a> &nbsp;&bull;&nbsp;
  <a href="CONTRIBUTING.md">Contributing</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-3.1.0-blue" alt="Version">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License">
  <img src="https://img.shields.io/badge/Claude_Code-skill-8A2BE2" alt="Claude Code Skill">
  <img src="https://img.shields.io/badge/Cowork-compatible-orange" alt="Cowork Compatible">
  <img src="https://img.shields.io/badge/Cursor-compatible-teal" alt="Cursor Compatible">
  <img src="https://img.shields.io/badge/Windsurf-compatible-cyan" alt="Windsurf Compatible">
  <img src="https://img.shields.io/badge/detection_incidents-0-brightgreen" alt="Zero Detection">
</p>

---

> **Legal Disclaimer** — This skill documents an autonomous LinkedIn management system. Automated interactions may violate [LinkedIn's User Agreement](https://www.linkedin.com/legal/user-agreement). Use at your own risk. The authors assume no liability for account restrictions or bans. Published for educational and research purposes.

---

## What Is This?

A **custom skill for Claude** that turns your AI assistant into a full-stack LinkedIn manager. It posts daily, engages with your network, triages DMs, audits itself for detection risk, and reports weekly — all autonomously.

Every rule is extracted from **22 days of real production data** on a live Italian profile. Not theory. Not best guesses. Empirical evidence from daily audits, scored engagement sessions, and 3 documented incidents that shaped the system.

> **Works in any language.** The wizard was battle-tested in Italian, but the system is language-agnostic. Phase 1 captures your identity, voice, and vocabulary in whatever language you operate in — Claude generates all content in your language. The architecture (pillar calendar, anti-detection rules, NDI scoring, task scheduling) is universal.

### The 5-Phase Wizard

Type `/linkedin` and Claude walks you through setup:

```
Phase 1  IDENTITY        15 questions to define your voice, vocabulary, red flags
Phase 2  STRATEGY        7-day pillar calendar, post format, humanization rules
Phase 3  ENGAGEMENT      Commenting rules, anti-detection, epistemic verification
Phase 4  TASK PLAN       Review every task before anything gets automated
Phase 5  CREATE & RUN    Deploy tasks, monitor, iterate weekly
```

Nothing is automated until you explicitly approve. Phase 4 is a **hard gate** — Claude will not proceed without your "approved."

---

<h2 id="install">Install</h2>

```bash
git clone https://github.com/videomakingio-gif/claude-linkedin-automation.git
cd claude-linkedin-automation
chmod +x install.sh && ./install.sh
```

The interactive installer walks you through 3 choices:

| Step | Options |
|------|---------|
| **Scope** | Global (all projects) / Project (current only) / Both |
| **IDE** | Claude Code / Cursor / Windsurf / Any combination |
| **Confirm** | Review and approve before anything is created |

**Quick install** (skip the wizard):
```bash
./install.sh --global     # All projects, Claude Code
./install.sh --project    # Current project only
./install.sh --uninstall  # Remove everything, all IDEs
```

**Update:** `git pull` — Claude Code uses a symlink, so the skill stays in sync. Cursor/Windsurf use file copies — re-run the installer after pulling.

After installing, type `/linkedin` in any Claude session to start.

---

<h2 id="how-it-works">How It Works</h2>

### Architecture

```
claude-linkedin-automation/
├── SKILL.md                              # The skill itself (5-phase wizard)
├── install.sh                            # Interactive installer
├── modules/
│   └── linkedin.md                       # Full module config (560 lines)
├── references/
│   ├── tov-framework.md                  # Voice: 10 rhetorical patterns, vocabulary, registers
│   ├── anti-detection-playbook.md        # 7 rules, NDI formula, escalation matrix
│   ├── content-templates.md              # Day-by-day templates with worked examples
│   ├── epistemic-verification.md         # 7-checkpoint fact verification gate
│   └── task-catalog.md                   # Full prompt templates for all 10 tasks
├── examples/
│   ├── weekly-plan.md                    # Real Week 3 content plan
│   └── engagement-session.md             # Scored session with 5 comments
├── assets/                               # Growth charts and dashboard
├── CHANGELOG.md
├── CONTRIBUTING.md
└── LICENSE
```

### The 10 Tasks

| # | Task | Schedule | What It Does |
|---|------|----------|--------------|
| 1 | `linkedin-daily-post` | Daily 8:00 | Publishes today's post + auto-comment after 20 min |
| 2 | `linkedin-daily-engagement` | Daily 9:00 | 25-min session: 8-10 likes + 5 comments |
| 3 | `linkedin-reply-to-replies` | Daily 16:00 | Responds to comment threads |
| 4 | `linkedin-dm-prep` | Daily 10:00 | Generates DM draft replies for human review |
| 5 | `linkedin-news-scout` | Daily 7:00 | Fetches niche news, flags content ideas |
| 6 | `linkedin-experiment-audit` | Daily 15:00 | Naturalness score, anti-pattern compliance |
| 7 | `linkedin-weekly-planner` | Sat 17:00 | Generates next week's 7 posts |
| 8 | `linkedin-weekly-diary` | Sat 19:00 | Compiles behind-the-scenes blog draft |
| 9 | `linkedin-weekly-report` | Sun 20:00 | Analytics: KPIs, per-post ranking, recommendations |
| 10 | `linkedin-outreach-daily` | Disabled | Cold outreach (opt-in) |

**Minimum viable setup:** Tasks 1 + 2 + 9. Three tasks, fully autonomous.

---

<h2 id="results">Results</h2>

### 22 Days of Production (G0-G22, March 3-24, 2026)

| Metric | Value |
|--------|-------|
| Duration | 22 days of daily operation |
| Scheduled tasks | 10 (9 active + 1 disabled) |
| Follower growth | 45 → 55 (+22%) |
| Posts published | 7/week, zero missed |
| Engagement sessions | Daily, 25 min each |
| AI detection incidents | **0** |
| L1 proof events | 13 named interactions |
| Avg engagement score | 8.0/10 |
| Non-Detection Index | 5.0+ avg |

Professionals replied by name, sent multi-message DMs, mentioned the profile in their own posts, and sent connection requests — all without suspecting automation.

### Growth Charts

<details>
<summary>Click to expand charts</summary>

![Follower Growth](assets/follower-growth.png)

![Engagement Quality Score](assets/engagement-score.png)

![Non-Detection Index](assets/ndi-tracking.png)

![L1 Proof Events](assets/l1-proof-events.png)

![Impressions per Post](assets/impressions-week3.png)

**[Interactive Dashboard (HTML)](assets/growth-dashboard.html)** — hover tooltips with daily data

</details>

---

<h2 id="anti-detection">Anti-Detection</h2>

### 7 Rules (empirically validated)

| # | Rule | Why |
|---|------|-----|
| 1 | **Tool mention limit**: max 2/5 comments mention your tool | 3/5 was flagged as promotion on Day 1 |
| 2 | **Structure variation**: never repeat same pattern consecutively | Repetition is the #2 detection vector |
| 3 | **Off-topic comment**: at least 1/5 outside your niche | 0/5 scored 6.0/10, 1-2/5 scored 8.5-9.0 |
| 4 | **Evangelization limit**: max 1 promotional phrase per session | "I use it every day" = instant flag |
| 5 | **Like-only on agreements**: don't extend agreement threads | Extending sounds artificial |
| 6 | **Fact-check before asserting**: verify or rephrase as question | Profile-B incident, Day 22 |
| 7 | **High-traffic targeting**: 1+ comment on posts with 200+ reactions | 7-12x reach multiplier |

### Non-Detection Index (NDI)

```
NDI = (L1 × 2 + L2 × 1) / (L1 + L2 + L3) × 10
```

- **L1** (weight 2): Named replies, multi-message DMs, public mentions
- **L2** (weight 1): Genuine questions, connection requests
- **L3** (weight 0): Generic likes, one-word replies

**NDI > 5.0** = healthy. **< 3.0** = investigate. **< 4.0 two weeks** = pause 48h and audit.

### Epistemic Verification Gate

Before publishing any factual claim, run 7 checkpoints:

1. Fact vs. Inference — label it correctly
2. Uncertainty Markers — verified / observed / inferred / speculative
3. Source Attribution — name it or don't claim it
4. Temporal Coherence — when did this happen?
5. Case-Specific Claims — verify in 30s or rephrase as question
6. Self-Assessment Bias — measured vs estimated vs projected
7. Absence-as-Proof — "I haven't found" ≠ "it doesn't exist"

**7/7 pass = publish. 5-6/7 = fix and publish. <5/7 = rewrite.**

Full methodology: [`references/anti-detection-playbook.md`](references/anti-detection-playbook.md)

---

<h2 id="compatibility">Compatibility</h2>

| Feature | Claude Code | Cowork | Cursor | Windsurf |
|---------|:-----------:|:------:|:------:|:--------:|
| Wizard (Phase 1-4) | Full | Full | Full | Full |
| Identity document generation | Full | Full | Full | Full |
| Weekly plan creation | Full | Full | Full | Full |
| Scheduled tasks (Phase 5) | crontab / Cloud Scheduler | `create_scheduled_task` | Manual | Manual |
| Browser automation | Chrome MCP (manual config) | Chrome MCP (built-in) | — | — |
| Update flow | Full | Full | Full | Full |
| Install method | Symlink (auto-update) | Symlink | File copy | File copy |

### Recommended Setup

| Use case | Best environment |
|----------|-----------------|
| Solo operator, zero config | **Cowork** — scheduled tasks handle everything |
| Developer, full control | **Claude Code** — cron + Python + GCP |
| Hybrid | Wizard in Cowork, deploy in Code |

---

## Reference Files

| File | When to read |
|------|-------------|
| [`references/tov-framework.md`](references/tov-framework.md) | Setting up voice, vocabulary, emotional registers |
| [`references/anti-detection-playbook.md`](references/anti-detection-playbook.md) | Configuring engagement rules, NDI scoring |
| [`references/content-templates.md`](references/content-templates.md) | Creating weekly post plans with day-by-day templates |
| [`references/epistemic-verification.md`](references/epistemic-verification.md) | Before publishing any factual claim |
| [`references/task-catalog.md`](references/task-catalog.md) | Customizing task prompts for Phase 5 |
| [`modules/linkedin.md`](modules/linkedin.md) | Full LinkedIn module implementation reference |

---

## Niche Adaptation

The skill was built in the AI/B2B automation niche, but the architecture is **domain-agnostic**. The 7-day pillar calendar adapts to any niche — you keep the emotional structure, change the content domain:

| Niche | Tuesday (Tool/Workflow) | Thursday (Case Study) | Friday (How-To) |
|-------|------------------------|-----------------------|-----------------|
| **AI / Automation** | Integration deep-dive | Client time saved | Claude skill tutorial |
| **B2B SaaS** | Feature walkthrough | Customer ROI story | Integration guide |
| **Coaching / Personal brand** | Framework breakdown | Client transformation | Routine walkthrough |
| **Developer / OSS** | Architecture decision | Community contribution | Setup tutorial |
| **Marketing / Agency** | Campaign teardown | Client results | Platform tutorial |
| **Legal / Consulting** | Regulatory update | Case resolution | Process guide |

The anti-detection rules, NDI scoring, epistemic verification gate, and task scheduling work identically across all niches. Only the content domain and vocabulary change — and the wizard captures those in Phase 1.

---

## FAQ

**How long does setup take?**
4-6 hours total. Identity definition is 2-3 hours (the hardest part). First week of content 2-3 hours. Task creation 15 minutes.

**What's the minimum viable setup?**
Tasks 1 (daily-post) + 2 (daily-engagement) + 9 (weekly-report). Three tasks, fully autonomous.

**Can I post more than once per day?**
Don't. LinkedIn penalizes same-day multiple posts.

**How do I know if comments are natural?**
Target 8.0+/10 on the scoring rubric. Below 7.0 = adjust rules. See [`anti-detection-playbook.md`](references/anti-detection-playbook.md).

**What if a task fails silently?**
Every task writes a log. Check `report/` daily. The experiment-audit task (daily 15:00) catches most silent failures.

**Does this only work in Italian?**
No. The wizard and examples are in Italian (the production language), but the system works in any language. Phase 1 captures your voice, vocabulary, and audience in your language — Claude generates everything accordingly.

**Does this only work for the AI/automation niche?**
No. The architecture (pillar calendar, anti-detection, NDI, verification gate) is niche-agnostic. See [Niche Adaptation](#niche-adaptation) for examples.

---

## Who Built This

**Giovanni Liguori** — AI Automation Architect

I transform manual processes into automated ecosystems for Italian SMBs and freelancers using Claude + Python + Google Cloud.

[giovanniliguori.it](https://giovanniliguori.it) &nbsp;&bull;&nbsp; [LinkedIn](https://www.linkedin.com/in/giovanniliguori-ai/) &nbsp;&bull;&nbsp; [Case Study](https://giovanniliguori.it/case-study/ecosistema-claude)

---

## The Experiment

Can a well-instructed LLM manage a professional LinkedIn profile without being identified as non-human?

After 22 days of daily operation:
- **Zero** detection incidents
- **13** L1 proof events (named conversations with professionals)
- **8.0/10** average engagement quality
- **5.0+** NDI (Non-Detection Index) consistently

The system works because it treats **identity and anti-detection as the same thing**. A profile with a clear, consistent, humanized voice is inherently less likely to be flagged. It's also more likely to convert.

---

## License

**MIT License** — Copyright (c) 2026 Giovanni Liguori

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). The methodology improves with more data points.

---

<p align="center">
  <sub>Built with Claude. Validated in production. Open source.</sub>
</p>
