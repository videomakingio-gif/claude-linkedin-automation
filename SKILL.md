---
name: Claude LinkedIn Automation
description: |
  Automate a professional LinkedIn presence end-to-end using Claude: daily posting with pillar calendar, engagement with anti-detection rules, DM triage, reporting, and growth tracking. Use when the user wants to automate LinkedIn, manage a profile with AI, create a content strategy, or set up engagement automation. Triggers on: "automate my LinkedIn", "LinkedIn automation", "automated LinkedIn", "LinkedIn bot", "LinkedIn scheduling", "LinkedIn AI management", "LinkedIn content calendar", "LinkedIn engagement strategy", "build a LinkedIn presence", "can Claude manage my LinkedIn", "how do I automate my LinkedIn", or any request involving systematic LinkedIn content creation, audience growth, or profile management. Covers: identity/TOV setup, pillar calendar, post creation, engagement rules, anti-detection, scheduled task creation, and weekly reporting.
version: 3.0.0
author: Giovanni Liguori (github.com/videomakingio-gif)
license: MIT
---

# Claude LinkedIn Automation

Automate a professional LinkedIn profile end-to-end: daily posting, engagement, DM triage, and reporting. Validated over 22 days (G0-G22, March 3-24, 2026) on a real Italian profile with 10 scheduled tasks, zero AI detection, 13 named interactions with professionals who had no idea.

This skill provides a 5-phase guided wizard. At the end, you'll have a fully autonomous LinkedIn system with scheduled tasks that run daily without manual intervention.

## When to Use This Skill

Read this when you need to:
- Set up automated LinkedIn management for a professional profile
- Create a content strategy with pillar calendar and identity-driven voice rules
- Build engagement automation with empirically-validated anti-detection safeguards
- Create scheduled tasks for LinkedIn posting, commenting, and reporting
- Track growth metrics and optimize a LinkedIn presence

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

## Creating Your Identity Document

Save as `CLAUDE.md` in your LinkedIn working directory:

```markdown
# Identity
## Who (1 paragraph: name, role, background, USP)
## Archetype (1 sentence + explanation)
## Tone of Voice
### Style rules (5-8 points)
### Vocabulary whitelist (15-20 words)
### Vocabulary blacklist (10-15 words)
### Signature closing phrase (if any)
### Red flags (what to NEVER do)
## Competitive positioning (vs 3-5 competitors)
## Blacklist profiles (check before every engagement)
```

For detailed TOV patterns, vocabulary systems, emotional registers, and worked examples, read `references/tov-framework.md`.

## Blacklist Management

Maintain a list of profiles to never engage with. Check **BEFORE** every like, comment, reply, or DM.

```markdown
| Profile | Reason | Date added |
|---------|--------|------------|
| [Name]  | [Why]  | [Date]     |
```

If a notification comes from a blacklisted profile: ignore silently. Log: `Skipped [name] — blacklist.`

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
10:00 dm-prep (Chrome MCP — scans notifications)
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

# Reference Files

| File | Read When |
|------|-----------|
| `references/tov-framework.md` | Setting up voice, vocabulary, registers (Phase 1) |
| `references/anti-detection-playbook.md` | Configuring engagement rules, NDI scoring (Phase 3) |
| `references/content-templates.md` | Creating weekly post plans, day-by-day templates (Phase 2) |
| `references/epistemic-verification.md` | Before publishing any factual claim (Phase 3) |
| `references/task-catalog.md` | Customizing task prompts (Phase 5) |

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
