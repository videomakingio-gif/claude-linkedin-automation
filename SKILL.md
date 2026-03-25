---
name: linkedin
description: |
  Automate a professional LinkedIn presence end-to-end using Claude: daily posting with pillar calendar, engagement with anti-detection rules, DM triage, reporting, and growth tracking. Use when the user wants to automate LinkedIn, manage a profile with AI, create a content strategy, or set up engagement automation. Triggers on: "automate my LinkedIn", "LinkedIn automation", "automated LinkedIn", "LinkedIn bot", "LinkedIn scheduling", "LinkedIn AI management", "LinkedIn content calendar", "LinkedIn engagement strategy", "build a LinkedIn presence", "can Claude manage my LinkedIn", "how do I automate my LinkedIn", or any request involving systematic LinkedIn content creation, audience growth, or profile management. Covers: identity/TOV setup, pillar calendar, post creation, engagement rules, anti-detection, scheduled task creation, and weekly reporting.
allowed-tools: Read, Write, Grep, Glob, Bash(ls *), Bash(cat *), Bash(mkdir *)
argument-hint: "[setup | update | status]"
version: 3.1.0
author: Giovanni Liguori (github.com/videomakingio-gif)
license: MIT
---

# Claude LinkedIn Automation

Automate a professional LinkedIn profile end-to-end: daily posting, engagement, DM triage, and reporting. Validated over 22 days (G0-G22, March 3-24, 2026) on a real Italian profile with 10 scheduled tasks, zero AI detection, 13 named interactions with professionals who had no idea.

This skill provides a 5-phase guided wizard. At the end, you'll have a fully autonomous LinkedIn system with scheduled tasks that run daily without manual intervention.

> **Legal Disclaimer:** Automated interactions may violate [LinkedIn's User Agreement](https://www.linkedin.com/legal/user-agreement). Use at your own risk. The authors assume no liability for account restrictions or bans. Published for educational and research purposes.

## When to Use This Skill

Read this when you need to:
- Set up automated LinkedIn management for a professional profile
- Create a content strategy with pillar calendar and identity-driven voice rules
- Build engagement automation with empirically-validated anti-detection safeguards
- Create scheduled tasks for LinkedIn posting, commenting, and reporting
- Track growth metrics and optimize a LinkedIn presence

---

# WIZARD INTERACTION FLOW — Instructions for Claude

**CRITICAL: Read this section first. It tells you HOW to guide the user through the 5 phases.**

This is an interactive wizard, not a documentation dump. You are the guide. The user answers questions, you build the system. Never present all questions at once. Never skip the approval gate.

## How to Run Each Phase

### UX Rule: Selection Over Typing

**CRITICAL: Wherever a question has a finite set of common answers, present options the user can pick from instead of asking them to type from scratch.** Use numbered lists or lettered options. Always include a "Other (describe)" escape hatch. The user can pick a number OR type a free-form answer.

This reduces friction, speeds up the wizard, and helps users who don't know where to start. Open-ended questions (USP, origin story, vocabulary) remain free-form.

### Phase 1: Identity & Voice (3-4 conversation turns)

**Turn 1** — Ask questions 1-4 (who they are):

> **1. What's your professional title?** (Not your job title — how you want to be known)
>
> Pick one or describe your own:
> - a) AI/Automation Consultant
> - b) Marketing Strategist
> - c) Business Coach
> - d) Software Developer / Engineer
> - e) Freelance Creative (Design / Video / Copy)
> - f) Founder / CEO
> - g) Consultant (Legal / Finance / HR)
> - h) Other — describe:
>
> **2. What did you do before this?** (Your origin story — what gives you credibility)
> _Free answer. Example: "I spent 8 years editing video before discovering automation."_
>
> **3. What's your unique stack/methodology?**
>
> Pick your primary tools or describe your own:
> - a) Claude + Python + Google Cloud
> - b) ChatGPT + Zapier + Notion
> - c) Custom code + APIs + self-hosted
> - d) No-code (Make, n8n, Bubble)
> - e) Framework/methodology (not tool-based)
> - f) Other — describe:
>
> **4. What's your one-line USP?** ("I help [who] do [what] by [how]")
> _Free answer. Example: "I help freelancers automate 40+ hours/month of repetitive work using Claude ecosystems."_

Wait for answers. Acknowledge, then proceed.

**Turn 2** — Ask questions 5-8 (voice):

> **5. Name 1-3 people whose communication style you admire. What specifically?**
> _Free answer. Example: "Naval Ravikant — concise, aphoristic. Sahil Bloom — structured threads."_
>
> **6. List 5 words you ALWAYS use and 5 you NEVER use**
> _Free answer. This defines your vocabulary fingerprint._
>
> **7. What's your signature closing line?** (Optional but powerful)
>
> Pick one or write your own:
> - a) I don't want one
> - b) A call to action ("Start today.")
> - c) A philosophical mic-drop ("The system works. You start it.")
> - d) A question ("What would you automate first?")
> - e) Other — write yours:
>
> **8. How do you handle disagreement?**
>
> Pick your style:
> - a) Diplomatic — acknowledge, then redirect
> - b) Data-driven — counter with numbers
> - c) Socratic — ask questions that expose the flaw
> - d) Direct/Provocative — state your position clearly
> - e) Avoidant — don't engage with conflict

Wait for answers.

**Turn 3** — Ask questions 9-12 (audience):

> **9. Who is your primary audience?**
>
> Pick the closest match or describe your own:
> - a) Freelancers / Solo consultants
> - b) SMB owners (1-50 employees)
> - c) Marketing managers / CMOs
> - d) Developers / Engineers
> - e) C-suite / Founders
> - f) Coaches / Trainers / Educators
> - g) Other — describe:
>
> **10. Who is your secondary audience?**
> _Same options as above, or "None"._
>
> **11. What keeps them awake at 2am?**
>
> Pick the closest or write your own:
> - a) "I'm spending too much time on repetitive tasks"
> - b) "My competitors are moving faster than me"
> - c) "I can't scale without hiring more people"
> - d) "I don't know which AI tools to trust"
> - e) "My clients expect more but my margins are shrinking"
> - f) Other — describe:
>
> **12. What do they Google that leads to people like you?**
> _Free answer. Example: "AI automation for small business", "how to use Claude for work"_

Wait for answers.

**Turn 4** — Ask questions 13-15 (positioning):

> **13. Top 3 competitors.** What do they do that you don't? What do you do that they don't?
> _Free answer. Name specific people, companies, or creator archetypes._
>
> **14. Complete: "Unlike [competitor], I [differentiator]"**
> _Free answer._
>
> **15. What result can you prove with data?**
>
> Pick a category and fill in your number:
> - a) Hours saved: ___ hours/month
> - b) Revenue generated: €/$ ___
> - c) Cost reduced: ___% or €/$ ___
> - d) Speed improvement: from ___ to ___
> - e) Other metric — describe:

Wait for answers. Then proceed to **Identity Document Generation** (see below).

### Phase 1 → Phase 2 Bridge: Generate Identity Document

After collecting all 15 answers, generate a complete identity document as a CLAUDE.md file. Use this template, populated with the user's answers:

```markdown
# Identity

## Who
[1 paragraph: name, role, background from Q1-2, USP from Q4]

## Archetype
[1 sentence archetype + explanation, derived from Q1-4]

## Tone of Voice

### Style rules
[5-8 rules derived from Q5-8. Reference `references/tov-framework.md` for structure.]

### Vocabulary whitelist
[15-20 words from Q6 + niche-specific terms from Q3]

### Vocabulary blacklist
[10-15 words from Q6 + generic/hype words to avoid]

### Signature closing phrase
[From Q7, or "none" if user skipped]

### Red flags (what to NEVER do)
[3-5 anti-patterns derived from Q5, Q8, and user's positioning]

## Target Audience

### Primary
[From Q9: who, what they need, their pain]

### Secondary
[From Q10]

### What keeps them awake
[From Q11]

### What they search
[From Q12]

## Competitive Positioning
[From Q13-15: vs 3 competitors, differentiators, provable results]

## Blacklist Profiles
| Profile | Reason | Date added |
|---------|--------|------------|
| (empty — user adds as needed) | | |
```

**Present the generated document to the user.** Say:
> "Here's your identity document. This will drive every post, comment, and DM. Review it — I can adjust anything. When it looks right, say 'approved' and we'll move to content strategy."

**Wait for explicit approval before proceeding to Phase 2.**

Save the approved document as `CLAUDE.md` in the user's LinkedIn working directory.

### Phase 2: Strategy & Content (1-2 turns)

Present the pillar calendar from the Phase 2 section below, then ask:

> Here's the default 7-day pillar calendar. Each day has a theme and emotional register.
>
> | Day | Pillar | Emotional Register |
> |-----|--------|-------------------|
> | Mon | Behind the Scenes | Curious, vulnerable |
> | Tue | Tool/Workflow | Pragmatic, generous |
> | Wed | Hot Take/Opinion | Provocative, moral |
> | Thu | Case Study/Results | Proud, specific |
> | Fri | How-To Tutorial | Didactic, patient |
> | Sat | Storytelling | Personal, reflective |
> | Sun | Soft CTA | Direct, confident |
>
> **What do you want to do?**
> - a) Looks good — keep this calendar as-is
> - b) I want to swap some days (tell me which)
> - c) I want to change pillar topics for my niche (tell me your niche)
> - d) I want a different structure entirely (describe)

Wait for feedback. Adjust if needed. Then show the post format and humanization rules.

Read `references/content-templates.md` for day-by-day templates and examples when writing the first weekly plan.

### Phase 3: Engagement & Anti-Detection (1 turn)

Present the engagement rules summary, then ask:

> These are the engagement rules, tested over 22 days with zero detection:
>
> - Max 2/5 comments mention your tool
> - At least 1/5 off-topic comment per session
> - Never repeat same comment structure consecutively
> - Fact-check before asserting (or rephrase as question)
> - 25-min sessions, 8-10 likes + 5 comments
>
> **What do you want to do?**
> - a) Keep all rules as-is (recommended)
> - b) I want to adjust limits (tell me which)
> - c) I want shorter/longer sessions
> - d) I have specific profiles to blacklist (list them)

Wait for confirmation. Read `references/anti-detection-playbook.md` for full scoring rubric and NDI formula.

### Phase 4: Task Plan — Review & Approve (APPROVAL GATE)

Present the full task table from Phase 4 below. Then ask:

> Here are the 10 tasks. **Mark which ones you want:**
>
> - [x] 1. `linkedin-daily-post` — Daily 8:00 — Publish + auto-comment
> - [x] 2. `linkedin-daily-engagement` — Daily 9:00 — Likes + comments
> - [x] 3. `linkedin-reply-to-replies` — Daily 16:00 — Respond to threads
> - [x] 4. `linkedin-dm-prep` — Daily 10:00 — DM draft generation
> - [x] 5. `linkedin-news-scout` — Daily 7:00 — Niche news scan
> - [x] 6. `linkedin-experiment-audit` — Daily 15:00 — Quality audit
> - [x] 7. `linkedin-weekly-planner` — Sat 17:00 — Generate next week's posts
> - [x] 8. `linkedin-weekly-diary` — Sat 19:00 — Blog draft
> - [x] 9. `linkedin-weekly-report` — Sun 20:00 — Analytics report
> - [ ] 10. `linkedin-outreach-daily` — Disabled — Cold outreach (opt-in)
>
> **Quick options:**
> - a) Keep all 9 active tasks (recommended)
> - b) Minimum setup: tasks 1 + 2 + 9 only
> - c) I want to customize (tell me which to remove/change)
> - d) I need to change schedules for my timezone (what's your timezone?)
>
> **Nothing gets created until you say 'approved'.**

**THIS IS A HARD GATE.** Do NOT proceed to Phase 5 until the user explicitly says "approved", "looks good", "go ahead", "let's do it", or equivalent clear confirmation. If the user asks questions or requests changes, address them and ask again.

### Phase 5: Create Tasks & Iterate

Only after Phase 4 approval:
1. Read `references/task-catalog.md` for the full prompt template of each approved task
2. Replace all `{{PLACEHOLDER}}` values with user-specific paths and names from Phase 1
3. **Detect the environment and create tasks accordingly:**

**Environment detection logic (Claude must follow this):**

```
IF tool `create_scheduled_task` is available (Cowork):
   → Use create_scheduled_task for each approved task
   → Tasks are permanent and survive session restarts

ELSE IF tool `CronCreate` is available (Claude Code):
   → Use CronCreate for each approved task
   → WARN the user: "These tasks run only while this Claude session
     is open and auto-expire after 3 days. For permanent scheduling,
     use crontab or a cloud scheduler."
   → Offer to generate a crontab export:
     "Want me to also generate a crontab file you can install
     with `crontab linkedin.cron` for permanent scheduling?"

ELSE (no scheduling tool available):
   → Generate task prompts as files in the working directory
   → Provide manual instructions for the user's preferred scheduler
```

4. Confirm creation of each task to the user
5. Provide first-week monitoring checklist

---

# PHASE 1: Identity & Voice

Before writing a single post, lock down who you are. This determines every post, comment, and DM the system will produce.

## Identity Questionnaire (15 Questions)

Spend 1-2 hours on this. The quality of your identity document determines the quality of everything downstream.

**Who you are:**
1. What's your professional title? (Not your job title, how you want to be known)
2. What did you do before this? (Your origin story creates credibility)
3. What's your unique stack/methodology? (The tools + approach nobody else combines)
4. What's your one-line USP? ("I help [who] do [what] by [how]")

**Your voice:**
5. Name 3 people whose communication style you admire. What specifically?
6. List 5 words you ALWAYS use and 5 words you NEVER use
7. What's your signature closing line? (Optional but powerful for brand recognition)
8. How do you handle disagreement? (Aggressive, diplomatic, Socratic, data-driven?)

**Your audience:**
9. Who is your primary audience? (Job title, company size, pain point)
10. Who is your secondary audience?
11. What do they think at 2am that keeps them awake?
12. What do they Google that leads them to people like you?

**Your positioning:**
13. Name your top 3 competitors. What do they do that you don't? What do you do that they don't?
14. Complete: "Unlike [competitor], I [differentiator]"
15. What result can you prove with data? (Hours saved, revenue generated, cost reduced)

## Blacklist Management

Maintain a list of profiles to never engage with. Check **BEFORE** every like, comment, reply, or DM.

```markdown
| Profile | Reason | Date added |
|---------|--------|------------|
| [Name]  | [Why]  | [Date]     |
```

If a notification comes from a blacklisted profile: ignore silently. Log: `Skipped [name] — blacklist.`

For detailed TOV patterns, vocabulary systems, emotional registers, and worked examples, read `references/tov-framework.md`.

---

# PHASE 2: Strategy & Content

## Pillar Calendar

Assign a content theme and emotional register to each day of the week. This creates variety, ensures topical coverage, and makes content planning predictable.

| Day | Pillar | Objective | Emotional Register |
|-----|--------|-----------|-------------------|
| Mon | Behind the Automation | Trust, transparency | Curious, vulnerable |
| Tue | Tool/Workflow | Practical utility | Pragmatic, generous |
| Wed | Hot Take/Opinion | Engagement, comments | Provocative, moral |
| Thu | Case Study/Results | Social proof | Proud, specific |
| Fri | How-To Tutorial | Value, saves, reach | Didactic, patient |
| Sat | Storytelling | Connection, followers | Personal, reflective |
| Sun | Soft CTA | Conversions | Direct, confident |

Adapt pillars to your niche. The 90/10 rule applies: max 1 post per week mentions your product (Sunday).

## Post Format

```
[HOOK — 1 sentence that stops the scroll]

[BODY — 3-5 blocks of 1-3 sentences]
[Each block = 1 idea]
[White space between blocks]
[At least 1 parenthetical or "thinking out loud"]

[CLOSING — Signature, question, mic-drop, or imperative]

#hashtag1 #hashtag2 #hashtag3
```

**Length variation is critical.** Mix: 1 micro-post (200-400 chars), 4-5 standard (600-1000 chars), 1 long (1000-1300 chars). All posts the same length is the #1 AI detection signal.

## Humanization Rules

These rules kept a real profile undetected for 22 days:

1. **1 parenthetical per post**: "(honestly, I didn't expect this)", "(and here a whole chapter opens up)"
2. **2-3 informal markers per post**: sentence fragments, self-questions ("Does it work? It works."), casual transitions
3. **Imperfection**: An interrupted thought, a correction, a doubt. Perfection = AI signal
4. **Vulnerability** (1 post every 2 weeks): Something that went wrong, a frustration, a doubt
5. **Never all posts the same length**: Vary 200-1300 chars across the week

## First Auto-Comment (mandatory, 15-30 min after post)

LinkedIn amplifies posts where the author comments within 30 minutes. Every post gets a first comment:
- **Value posts** (Tue, Wed, Fri, Sat): Follow-up question or complementary insight. Never a CTA.
- **Case study** (Thu): Complementary data + soft CTA to consultation
- **CTA** (Sun): Direct link to product/service
- **Behind the scenes** (Mon): Link to blog post if applicable

**Links go in the first comment, NEVER in the caption.** LinkedIn penalizes external links in captions.

For day-by-day templates and worked examples, read `references/content-templates.md`.

## Weekly Content Planning

Create `SETTIMANA-XX-POST.md` each week with all 7 posts pre-written. Include for each:
- Full post text (ready to publish)
- First auto-comment text
- Target hashtags (max 5)

---

# PHASE 3: Engagement & Anti-Detection

## Engagement Sessions

- **Duration**: 25 minutes max
- **Actions**: 8-10 likes + 5 substantive comments
- **Timing**: Run AFTER daily post completes (30+ min gap)
- **Pauses**: 25s like→comment, 35s comment→comment, 20s like→like
- **Hard limits**: Max 15 comments, 30 likes per session. Stop on CAPTCHA.

## Comment Quality Rules

- Minimum 2 lines per comment. Never "Great post!" or generic praise
- Add value: a data point, a personal experience, an intelligent question, a partial disagreement
- Match the profile's TOV
- Each comment structured differently

## Anti-Detection Rules (empirically validated, G0-G22)

1. **Tool mention limit**: Max 2/5 comments can mention your primary tool. (3/5 was flagged as promotion on Day 1)
2. **Structure variation**: Never repeat the same comment pattern on consecutive comments
3. **Off-topic comment**: At least 1/5 on a theme outside your niche. (0/5 scored 6.0/10, 1-2/5 scored 8.5-9.0)
4. **Evangelization limit**: Max 1 promotional-sounding phrase per session
5. **Like-only on agreements**: When someone agrees, just like. Don't extend the thread
6. **Fact-check before asserting**: If a post cites a specific case, verify in 30 seconds or rephrase as question
7. **Target fresh posts**: Comment on posts <6 hours old for maximum reach. At least 1/session on posts with 200+ reactions

Full scoring rubric, NDI formula, and escalation matrix in `references/anti-detection-playbook.md`.

## Epistemic Verification Gate

Before publishing any content with factual claims, run the 7-checkpoint gate:

1. **Fact vs. Inference**: Is this verified or inferred? Use appropriate language
2. **Uncertainty Markers**: Label confidence (verified, observed, inferred, speculative)
3. **Source Attribution**: Name the source. Never "I read somewhere..."
4. **Temporal Coherence**: Is the timeframe clear?
5. **Case-Specific Claims Gate** (CRITICAL): If commenting on someone's case, verify or rephrase as question
6. **Self-Assessment Bias**: Separate measured results from estimates
7. **Absence-as-Proof**: Never treat lack of counter-evidence as proof

7/7 pass = publish. 5-6/7 = fix failing checkpoints. <5/7 = rewrite.

Full framework in `references/epistemic-verification.md`.

---

# PHASE 4: Task Plan — Review & Approve

After configuring identity, strategy, and engagement rules, we generate all scheduled tasks. You review this table before anything is automated.

## LinkedIn Task Plan

| # | Task ID | Schedule | What It Does |
|---|---------|----------|--------------|
| 1 | `linkedin-daily-post` | Daily 8:00 | Publish day's post from weekly plan + auto-comment after 20 min |
| 2 | `linkedin-daily-engagement` | Daily 9:00 | 25-min session: 8-10 likes + 5 comments with anti-detection |
| 3 | `linkedin-reply-to-replies` | Daily 16:00 | Respond to comment threads from morning engagement |
| 4 | `linkedin-dm-prep` | Daily 10:00 | Scan notifications, generate DM drafts for human review |
| 5 | `linkedin-news-scout` | Daily 7:00 | Fetch AI/niche news, flag content opportunities |
| 6 | `linkedin-experiment-audit` | Daily 15:00 | Quality audit: naturalness scores, anti-pattern compliance |
| 7 | `linkedin-weekly-planner` | Sat 17:00 | Generate next week's 7 posts + auto-comments + visual briefs |
| 8 | `linkedin-weekly-diary` | Sat 19:00 | Compile weekly diary (behind-the-scenes blog content) |
| 9 | `linkedin-weekly-report` | Sun 20:00 | Analytics: KPI table, per-post performance, recommendations |
| 10 | `linkedin-outreach-daily` | Disabled | Cold outreach via email (opt-in, disabled by default) |

**You can now:**
- Remove tasks you don't need (e.g., remove diary if you don't have a blog)
- Change schedules (adjust for your timezone and peak audience hours)
- Disable specific tasks

**Nothing is created until you say "approved."**

## Schedule Logic

Tasks are ordered to avoid Chrome MCP conflicts (only one browser session at a time):
```
7:00  news-scout (web search, no browser)
8:00  daily-post (Chrome MCP — publishes + waits 20 min + auto-comment)
9:00  daily-engagement (Chrome MCP — 25 min session)
10:00 dm-prep (no Chrome MCP, 10 min)
15:00 experiment-audit (reads logs, no browser)
16:00 reply-to-replies (Chrome MCP — responds to threads)
```

Minimum 30-minute gap between any two Chrome MCP tasks.

---

# PHASE 5: Create Tasks & Iterate

## Task Creation

After you approve the table, we create each task using `create_scheduled_task`. Each task gets:
- **Task ID**: Unique kebab-case identifier
- **Schedule**: Cron expression
- **Prompt**: Full instruction Claude executes each run

The complete prompt templates for all 10 tasks are in `references/task-catalog.md`. Each prompt is customized with your identity, pillar calendar, and working directory from Phases 1-3.

## First Week Monitoring

Check daily:
- **Posts**: Published on time? Formatting issues?
- **Engagement**: 5+ comments posted? Anti-pattern compliance?
- **Logs**: Read `report/` folder. Chrome MCP errors?

## What Typically Breaks

1. **Chrome MCP offline**: Browser disconnects. Don't retry, log and notify
2. **Timing conflicts**: Two tasks start at once. Ensure 30+ min gap
3. **Comment fails**: Post deleted or comments closed. Log, move on
4. **Silent failures**: Task runs but no output. Add fallback logging

## When to Adjust

- **Week 1**: Review comment quality (target 8.0+/10)
- **Week 2**: Check best-performing pillar, swap underperformers
- **Week 3**: Tighten TOV rules if comments don't match identity
- **Week 4**: Full cycle review. Is the system sustainable?

## Measurement

| Metric | Week 1 Target | Why It Matters |
|--------|---------------|----------------|
| Impressions/post | 10-20 (small accounts) | Baseline reach |
| Engagement rate | 2-5% | Content resonance |
| Follower growth | +2-5/week | Conversion signal |
| Comment quality | 7.0+/10 | Anti-detection health |
| Task completion | 95%+ | Automation stability |

## Recovery Protocol

1. **Detect**: Check logs daily. Silent failures are the most dangerous
2. **Assess**: Visible damage (wrong post live) vs invisible (missed post)
3. **Contain**: Remove visible errors. For missed posts, don't double-post
4. **Fix**: Update the rule that should have prevented this
5. **Document**: Add to findings log. Every failure makes the system stronger

---

# UPDATING AN EXISTING SETUP

If the user already has a working LinkedIn automation system and wants to update to a newer version of this skill, **do NOT re-run the full wizard**. Use this update flow instead.

## When to Use the Update Flow

Trigger on: "update the skill", "upgrade my LinkedIn automation", "I updated the skill repo", "sync my setup with the new version", "what changed?", or any request to apply new rules without starting from scratch.

## Update Flow — Instructions for Claude

### Step 1: Detect Current State

Check what exists in the user's LinkedIn working directory:
- Does `CLAUDE.md` exist? → Identity is already configured
- Does `SETTIMANA-XX-POST.md` exist? → Content planning is active
- Are scheduled tasks running? → Check with `list_scheduled_tasks` (Cowork) or `CronList` (Claude Code)

Report to user:
> "I found your existing setup: [identity doc / X scheduled tasks / weekly plan for week Y]. Let me check what's new in the skill and what needs updating."

### Step 2: Diff the Changes

Compare the current skill version against what the user has:

1. **SKILL.md version** — Read the version in frontmatter. Compare with user's last known version (check CHANGELOG.md).
2. **Reference files** — Check if any reference files have been updated (anti-detection rules, TOV patterns, task prompts).
3. **Task prompts** — Compare active task prompts (from `list_scheduled_tasks`) against latest templates in `references/task-catalog.md`.

### Step 3: Present Update Plan

Show the user a clear summary:

> "Here's what changed between v[old] and v[new]:
>
> **New rules:** [list new anti-detection rules, engagement changes, etc.]
> **Updated task prompts:** [list which tasks have new prompt templates]
> **New features:** [list new tasks or capabilities]
> **Breaking changes:** [anything that requires manual adjustment]
>
> I can apply these updates automatically. Want me to proceed?"

### Step 4: Apply Updates (after approval)

For each change:

**Identity updates** (rare):
- Read existing CLAUDE.md
- Add new sections without overwriting existing content
- Show diff to user before saving

**Rule updates** (common):
- Update anti-detection rules in CLAUDE.md
- Update engagement parameters
- No task restart needed — rules are read at runtime

**Task prompt updates** (common):
- For each changed task: call `update_scheduled_task` (Cowork) or recreate with `CronDelete` + `CronCreate` (Claude Code)
- Confirm each update to user
- Log: "Updated [task-id] prompt from v[old] to v[new]"

**New tasks** (occasional):
- Present new task with description
- Ask: "This is a new task. Want to add it?"
- Only create after approval

**Removed/deprecated tasks** (rare):
- Flag to user: "Task [X] has been deprecated. Want to disable it?"
- Never delete without explicit confirmation

### Step 5: Verification

After all updates:
1. Run `list_scheduled_tasks` (Cowork) or `CronList` (Claude Code) to confirm all tasks are active
2. Verify CLAUDE.md has the new version marker
3. Report summary: "Updated X tasks, added Y new rules, no breaking changes."

## Version Tracking

Add this line at the bottom of the user's CLAUDE.md after any update:

```markdown
---
*Skill version: 3.1.0 | Last updated: YYYY-MM-DD*
```

This allows future update flows to detect the installed version.

---

# Reference Files

| File | Read When |
|------|-----------|
| `references/tov-framework.md` | Setting up voice, vocabulary, registers (Phase 1) |
| `references/anti-detection-playbook.md` | Configuring engagement rules, NDI scoring (Phase 3) |
| `references/content-templates.md` | Creating weekly post plans, day-by-day templates (Phase 2) |
| `references/epistemic-verification.md` | Before publishing any factual claim (Phase 3) |
| `references/task-catalog.md` | Customizing task prompts (Phase 5) |
| `modules/linkedin.md` | Detailed implementation reference for all LinkedIn tasks |

---

# ENVIRONMENT COMPATIBILITY

This skill works in both **Claude Cowork** and **Claude Code**, with some differences in Phase 5.

## What works everywhere (Cowork + Code)

- **Phase 1-4 (Wizard)** — Pure conversation. Claude reads SKILL.md and guides the user through identity, strategy, engagement config, and plan review. No environment dependencies.
- **Identity document generation** — Writes files to disk. Works in both.
- **Update Flow** — Reads files, compares versions, applies changes. Works in both.
- **Weekly plan creation** — Generates SETTIMANA-XX-POST.md. Works in both.

## Task Scheduling by Environment

| Feature | Cowork | Claude Code | Fallback |
|---------|--------|-------------|----------|
| Session tasks | `create_scheduled_task` | `CronCreate` | — |
| Permanent tasks | `create_scheduled_task` | `crontab` / Cloud Scheduler | Manual |
| Task listing | `list_scheduled_tasks` | `CronList` / `crontab -l` | — |
| Task removal | `delete_scheduled_task` | `CronDelete` / `crontab -e` | — |
| Browser automation | Chrome MCP (built-in) | Chrome MCP (manual MCP config) | — |
| Task persistence | Permanent | Session-only (3 day max) | Permanent (crontab) |

### Claude Code — CronCreate (session tasks)

Claude Code has native `CronCreate` / `CronList` / `CronDelete` tools. These work identically to Cowork's scheduled tasks **within a session** — same cron syntax, same prompt templates. Use them for:

- **Testing** task prompts before deploying to production
- **Working sessions** where Claude stays open (e.g., a workday)
- **Quick automation** that doesn't need to survive a restart

**Limitation:** Tasks auto-expire after 3 days and die when the session ends.

### Claude Code — Permanent scheduling

For production-grade permanent scheduling, export task prompts to your preferred scheduler:

```bash
# Option 1: crontab (simplest)
# The skill can generate a linkedin.cron file, then:
crontab linkedin.cron

# Option 2: Cloud Scheduler + Cloud Run (GCP)
# Wrap each task prompt in a Cloud Function

# Option 3: systemd timers (Linux servers)
```

Phase 5 auto-detects which tools are available and adapts accordingly.

### Other Claude Code setup notes

1. **Chrome MCP requires manual config.** Add it to your `.claude/settings.json` as an MCP server. Same capabilities as Cowork, different setup path.
2. **File paths are local.** Replace `/mnt/linkedin/` with your actual project directory path.
3. **Claude reads the same CLAUDE.md at runtime.** The identity document, anti-detection rules, and engagement config work identically — Claude Code reads them from your project root.

## Recommended setup by use case

- **Solo operator, wants zero config** → Cowork. `create_scheduled_task` handles everything.
- **Developer, wants full control** → Code. Cron + Python scripts + GCP for production-grade scheduling.
- **Hybrid** → Wizard in Cowork (easier conversation UX), then export task prompts to Code for production deployment.

---

# FAQ

**Q: How long does setup take?**
A: 4-6 hours total. Identity definition is 2-3 hours (the hardest part). First week of content is 2-3 hours. Task creation is 15 minutes.

**Q: What if a task fails silently?**
A: Every task writes a log. Check `report/` daily. Implement fallback logging that writes even on failure.

**Q: Can I post more than once per day?**
A: Don't. LinkedIn penalizes same-day multiple posts.

**Q: How do I know if comments are natural?**
A: Use the comment quality audit in `references/anti-detection-playbook.md`. Target 8.0+/10. Below 7.0 = adjust rules.

**Q: What's the minimum viable setup?**
A: Tasks 1 (daily-post) + 2 (daily-engagement) + 9 (weekly-report). Three tasks, fully autonomous posting and engagement with weekly measurement.

---

# Final Principle

This system works because it treats identity and anti-detection as the same thing. A profile with a clear, consistent, humanized voice is inherently less likely to be flagged as AI. It's also more likely to convert followers to customers.

Don't optimize for scale first. Optimize for naturalness first. Scale follows.

Start with Phase 1. Answer all 15 questions. Everything else depends on this foundation.
