# Claude LinkedIn Automation

A battle-tested skill for managing a professional LinkedIn profile autonomously using Claude. Built and validated over 12+ weeks on a real profile, with 21 automations in production, zero AI detection.

This isn't theory. Every rule in this skill was extracted from daily operation, daily audits, and weekly iterations on a live Italian LinkedIn profile in the AI/B2B niche.

## Results

| Metric | Value |
|--------|-------|
| Duration | 12+ weeks (March–May 2026) |
| Automations in production | 21 |
| Follower growth | 45 → 200+ |
| Posts published | 7/week, zero missed |
| Engagement sessions | Daily, 25 min each |
| AI detection incidents | 0 |
| Average engagement score | 8.2/10 |
| Non-Detection Index (NDI) | 5.0+ avg |

The profile received named replies, multi-message DM conversations, public mentions, and connection requests from real professionals in the niche — all treating the account as human-operated.

## What This Skill Does

It covers the full lifecycle of LinkedIn automation in 5 layers:

```
Layer 1: IDENTITY      Define who you are, your voice, vocabulary, red flags
Layer 2: STRATEGY      Pillar calendar, content mix, audience targeting
Layer 3: CONTENT       Post creation, formats, hooks, closings, humanization
Layer 4: ENGAGEMENT    Commenting, liking, DMs, anti-detection rules
Layer 5: MEASUREMENT   Weekly reports, KPI tracking, experiment auditing
```

Each layer builds on the previous. The skill guides you through setup in order.

## Architecture

```
claude-linkedin-automation/
├── SKILL.md                          # Main skill — 6-step setup guide
├── references/
│   ├── tov-framework.md              # Tone of voice: 4 axes, vocabulary system, rhetorical patterns
│   ├── anti-detection-playbook.md    # Anti-detection: 7 rules, scoring, NDI formula, escalation
│   └── content-templates.md          # Templates for each pillar day + micro-posts + first comments
├── examples/
│   ├── weekly-plan.md                # Example weekly content plan (7 posts + auto-comments)
│   └── engagement-session.md         # Example engagement session with scoring
└── assets/
    └── architecture.svg              # System architecture diagram
```

## Quick Start

### 1. Install the skill

Download the `.skill` file from [Releases](../../releases) and install it in Claude Code or Cowork:

```bash
claude install claude-linkedin-automation.skill
```

Or clone this repo and point Claude at the `SKILL.md`:

```bash
git clone https://github.com/giovanniliguori/claude-linkedin-automation.git
```

### 2. Define your identity

The skill walks you through creating an identity document. You'll need:

- Your professional positioning (archetype, not job title)
- How you actually write (vocabulary, sentence structure, formality)
- Words you'd never use (the blacklist matters more than the whitelist)
- 3-5 competitors and how you differ

### 3. Build your pillar calendar

Assign a content theme and emotional register to each day of the week. The skill provides a proven template:

| Day | Theme | Register |
|-----|-------|----------|
| Mon | Behind the Scenes | Curious, vulnerable |
| Tue | Tool / Workflow | Pragmatic, generous |
| Wed | Hot Take | Provocative, moral |
| Thu | Case Study | Proud, specific |
| Fri | How-To Tutorial | Didactic, patient |
| Sat | Storytelling | Personal, reflective |
| Sun | Soft CTA | Direct, confident |

### 4. Set up scheduled tasks

Create these recurring tasks (adapt timing to your timezone):

| Task | Schedule | Purpose |
|------|----------|---------|
| `daily-post` | Every day 8:00 | Publish post + auto-comment after 20 min |
| `daily-engagement` | Every day 9:00 | 25-min engagement session |
| `weekly-report` | Sunday 20:00 | Analytics + performance report |
| `weekly-planner` | Saturday 17:00 | Create next week's content plan |

### 5. Run and iterate

The first week will be rough. That's normal. The anti-detection playbook includes a daily audit template and scoring rubric. Use them. Patterns emerge after 5-7 days and guide your adjustments.

## Key Concepts

### Anti-Detection: The 7 Rules

The engagement anti-detection system was developed through daily audits over 12+ weeks. These are the rules that kept the profile undetected:

1. **Tool mention limit**: Max 2/5 comments can mention your primary tool
2. **Structure variation**: Never repeat the same comment structure consecutively
3. **Off-topic comment**: At least 1/5 on a theme outside your niche
4. **No pattern repetition**: Each comment must have a unique rhetorical approach
5. **Evangelization limit**: Max 1 phrase per session that sounds like product promotion
6. **Like-only on agreements**: When someone agrees, just like. Don't extend the thread.
7. **Fact-check before asserting**: If a post cites a specific case, verify before commenting

Full methodology with scoring rubric: [`references/anti-detection-playbook.md`](references/anti-detection-playbook.md)

### Non-Detection Index (NDI)

A composite metric that measures how "human" your profile appears based on interaction quality:

```
NDI = (L1 × 2 + L2 × 1) / (L1 + L2 + L3) × 10
```

Where:
- **L1** (strong signal): Named replies, multi-message conversations, public mentions
- **L2** (medium signal): Genuine questions, connection requests, multiple likes
- **L3** (weak signal): Generic likes, one-word replies

NDI > 5.0 = healthy. Below 3.0 = investigate.

### Humanization Rules

The 5 rules that prevent posts from reading as AI-generated:

1. At least 1 parenthetical or "thinking out loud" moment per post
2. 2-3 informal markers per post (sentence fragments, self-questions, casual transitions)
3. At least 1 "imperfect" element (interrupted thought, correction, doubt)
4. 1 vulnerability post every 2 weeks (something that went wrong)
5. **Never all posts the same length** — this is the #1 detection signal

## Who Built This

**Giovanni Liguori** — AI Automation Architect. I transform manual processes into automated ecosystems for Italian SMBs and freelancers using Claude + Python + Google Cloud.

My own LinkedIn profile runs entirely on this system: 21 automations in production that publish, engage, analyze, and report — every day, autonomously.

This skill is the distilled methodology from that experience.

- Website: [giovanniliguori.it](https://giovanniliguori.it)
- LinkedIn: [linkedin.com/in/giovanniliguori-ai](https://www.linkedin.com/in/giovanniliguori-ai/)
- Full case study: [giovanniliguori.it/case-study/ecosistema-claude](https://giovanniliguori.it/case-study/ecosistema-claude)
- Claude Mastery (guide): [giovanniliguori.it/claude-mastery](https://giovanniliguori.it/claude-mastery)

## The Experiment

This skill was developed as part of a documented social experiment: can a well-instructed LLM manage a professional LinkedIn profile without being identified as non-human?

After 12+ weeks of daily operation:
- Zero detection incidents
- Multiple named conversations with real professionals
- Public mentions and recommendations from people who had no idea
- Engagement quality scores averaging 8.2/10

The full experiment methodology, daily audit data, and findings are documented in the case study linked above.

## Related Resources

- **[Claude Mastery](https://giovanniliguori.it/claude-mastery)** — 37-page operational guide to Claude: Projects, Skills, Claude Code, Cowork, sub-agents, and 4 measured case studies (€19)
- **[5 Workflow Claude](https://giovanniliguori.it/5-workflow-claude)** — Free lead magnet: 5 Claude workflows that save 40+ hours/month
- **[Case Study: Ecosistema Claude](https://giovanniliguori.it/case-study/ecosistema-claude)** — Full technical breakdown of the 21-automation ecosystem

## License

MIT License. Use it, modify it, build on it. If you do something cool with it, let me know.

## Contributing

Found a bug? Have a better anti-detection rule? Open an issue or PR. The methodology improves with more data points.

If you're running this on your own profile and want to share anonymized results, I'd love to include them in the dataset.
