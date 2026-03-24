---
name: linkedin-automation
description: |
  Automate a professional LinkedIn presence end-to-end using Claude: daily posting with pillar calendar, engagement with anti-detection rules, reporting, and growth tracking. Use when the user wants to automate LinkedIn, manage a profile with AI, create a content strategy, or set up engagement automation. Triggers on: "LinkedIn automation", "automated LinkedIn", "LinkedIn bot", "LinkedIn scheduling", "LinkedIn AI management", "how do I automate my LinkedIn", "can Claude manage my LinkedIn", "LinkedIn content calendar", "LinkedIn engagement strategy", "build a LinkedIn presence", or any request involving systematic LinkedIn content creation and audience growth. Covers: identity/TOV, content planning, publishing, engagement rules, anti-pattern detection, and weekly reporting.
---

# LinkedIn Automation Skill

This skill encapsulates a battle-tested methodology for running a professional LinkedIn profile autonomously using Claude. It was developed and validated over 12+ weeks managing a real profile (growing from 45 to 200+ followers) with 21 automations in production, without being detected as AI-managed.

## When to use this skill

Read this skill when you need to:
- Set up automated LinkedIn management for a professional profile
- Create a content strategy with pillar calendar and TOV rules
- Build engagement automation with anti-detection safeguards
- Track growth metrics and optimize a LinkedIn presence
- Create scheduled tasks for LinkedIn posting, commenting, and reporting

## Architecture Overview

A fully automated LinkedIn system has 5 layers:

```
Layer 1: IDENTITY (who you are, TOV, vocabulary, red flags)
Layer 2: STRATEGY (pillar calendar, content mix, target audience)
Layer 3: CONTENT (post creation, formats, hooks, closings)
Layer 4: ENGAGEMENT (commenting, liking, DMs, anti-pattern rules)
Layer 5: MEASUREMENT (weekly reports, KPIs, experiment tracking)
```

Each layer builds on the previous. Don't skip ahead — a posting system without a defined identity produces generic content that damages the profile.

## Step 1: Define Identity

Before writing a single post, create a comprehensive identity document. This is the foundation everything else builds on.

### What to capture

**Archetype**: The user's professional positioning in 1 sentence. Not a job title — an archetype that captures how they create value. Examples: "Alchimista Tecnologico" (transforms technical complexity into business leverage), "Il Traduttore" (bridges two worlds that don't normally talk).

**Tone of Voice rules**:
- How they sound (direct? provocative? nurturing? analytical?)
- Sentence structure preferences (short punchy vs. long narrative)
- Vocabulary whitelist (words they actually use)
- Vocabulary blacklist (words that would sound fake coming from them)
- Formality level and register variations by context

**Unique differentiators**: What makes them different from competitors in their space. Be specific — not "I know AI" but "I have 21 Claude automations in production managing my entire digital presence."

**Red flags**: Styles and patterns that would betray the automation or damage the brand. These are absolute prohibitions.

### Identity document structure

Save as the main project instructions file (e.g., `CLAUDE.md` in the LinkedIn working directory). Structure:

```markdown
# Identity
## Who (1 paragraph: name, role, background, USP)
## Archetype (1 sentence + explanation)
## Tone of Voice
### Style rules (5-8 bullet points)
### Vocabulary whitelist
### Vocabulary blacklist
### Signature/closing phrase (if any)
### Red flags (what to NEVER do)
## Competitive positioning (vs 3-5 competitors)
```

Ask the user to review this document carefully. Every post, comment, and DM will be filtered through these rules. Getting this wrong means everything downstream sounds off.

## Step 2: Build the Pillar Calendar

A pillar calendar assigns a content theme to each day of the week. This creates variety, ensures topical coverage, and makes content planning predictable.

### Design principles

- **7 days, 7 pillars**: Each day has a distinct content type and emotional register
- **Mix value and promotion**: Follow the 90/10 rule (90% pure value, max 10% promotional)
- **Vary emotional register**: Not every day should be analytical. Map emotions to pillars (curiosity on Monday, generosity on Tuesday, indignation on Wednesday, pride on Thursday, patience on Friday, tenderness on Saturday, confidence on Sunday)
- **Data-driven optimization**: Track which pillar performs best and adjust over time

### Example pillar structure

| Day | Pillar | Objective | Register |
|-----|--------|-----------|----------|
| Mon | Behind the Scenes | Trust, transparency | Curious, vulnerable |
| Tue | Tool/Workflow | Practical utility | Pragmatic, generous |
| Wed | Hot Take / Opinion | Engagement, comments | Provocative, moral |
| Thu | Case Study / Results | Social proof | Proud, specific |
| Fri | How-To Tutorial | Value, saves, reach | Didactic, patient |
| Sat | Storytelling | Connection, followers | Personal, reflective |
| Sun | Soft CTA | Conversion | Direct, confident |

Save as `STRATEGIA-LINKEDIN.md` or equivalent. Include for each pillar: objective, emotional register, example hooks, and rules.

### Weekly content planning

Create a `SETTIMANA-XX-POST.md` file each week with all 7 posts pre-written. Include for each post:
- Full post text (ready to copy-paste)
- First auto-comment text (published 15-30 min after the post)
- Target hashtags (max 5)
- Visual brief (if applicable)

**Length variation is critical**: Mix 1 micro-post (200-400 chars), 4-5 standard (600-1000 chars), 1 long (1000-1300 chars). All posts the same length is the #1 AI detection signal on LinkedIn.

## Step 3: Post Format and Writing Rules

### Post anatomy

```
[HOOK — 1 sentence that stops the scroll]

[BODY — 3-5 blocks of 1-3 sentences each]
[Each block = 1 idea]
[White space between blocks]

[CLOSING — Signature, question, mic-drop, or imperative. Vary.]

#hashtag1 #hashtag2 #hashtag3
```

### Hook patterns (rotate, never repeat 3 days in a row)

1. **Negation**: "You don't need a marketing team. You need a system."
2. **Data shock**: "I saved 40+ hours/month. Here's the system."
3. **Narrative scene**: "Monday morning. The automation crashed at 8:03."
4. **Provocative question**: "What if the problem isn't the tool but the assumption behind it?"
5. **Paradox**: "The more I automated, the more human my content became."
6. **Confession**: "I got this completely wrong last week."

### Humanization rules (critical for anti-detection)

These rules prevent posts from reading as AI-generated:

1. **At least 1 parenthetical or "thinking out loud" moment per post**: "(honestly, I didn't expect this)", "(and here a whole chapter opens up)", "spoiler: it didn't go as planned"
2. **Informal markers** (use 2-3 per post): sentence fragments, self-questions ("Does it work? It works."), casual transitions ("That said,", "At that point,", "The thing is,")
3. **Imperfection**: Break the cleanliness. An interrupted thought, a correction, a doubt. Perfection is the enemy of authenticity.
4. **Vulnerability** (1 post every 2 weeks): Show something that went wrong, a doubt, a frustration. Pattern: "Last week I [what went wrong]. My first instinct was [reaction]. Then [what I learned]. The system now [how it improved]."
5. **Never all posts the same length**: This is the single biggest tell. Vary between 200 and 1300 characters across the week.

### First auto-comment (mandatory)

LinkedIn's algorithm amplifies posts where the author comments within 30 minutes. Every post gets a first comment:
- **Value posts** (Tue, Wed, Fri, Sat): A follow-up question, complementary data point, or insight not in the post. NEVER a CTA.
- **Case study posts** (Thu): Complementary insight + soft CTA to consultation/service
- **CTA posts** (Sun): Direct link to product/service
- **Behind the scenes** (Mon): Link to full blog post if applicable

Links go in the first comment, NEVER in the post caption (LinkedIn penalizes external links in captions).

## Step 4: Engagement Automation

### Session structure

- **Duration**: 25 minutes max per session
- **Actions**: 8-10 likes + 5-8 substantive comments
- **Timing**: Run AFTER the daily post (30+ min gap to avoid Chrome MCP conflicts)
- **Pause between actions**: 20-40 seconds (mimics human behavior)
- **Hard limits**: Max 15 comments, 30 likes per session. Stop immediately on CAPTCHA.

### Comment quality rules

- **Minimum 2 lines** per comment. Never "Great post!" or generic praise.
- **Add value**: a data point, a personal experience, an intelligent question, or a partial disagreement.
- **Match the profile's TOV**: Use the same vocabulary, same formality level, same patterns as the posts.

### Anti-pattern rules (critical for anti-detection)

These rules were developed through real-world testing and prevent comments from being identifiable as AI-generated:

1. **Max 2/5 comments per session can mention the user's primary tool/product.** The rest must discuss the topic generally or cover adjacent themes.
2. **Vary comment structure.** NEVER use the same pattern on consecutive comments. Rotate between: provocative question, data + opinion, cross-sector parallel, partial disagreement, confirmation with specific anecdote.
3. **At least 1 comment per session on an off-topic theme**: business strategy, freelancing, pricing, market dynamics — something outside the user's core niche.
4. **Never repeat the same rhetorical pattern on 2 consecutive comments.**
5. **Limit "evangelization" phrases** ("I use it every day", "the difference is clear") to max 1 per session.
6. **When someone agrees with you, just like. Don't reply.** Continuing a thread where someone already validated your point sounds verbose and artificial.
7. **Research before commenting on posts with specific facts.** If a post cites a specific case/company/study, verify it exists before commenting. Never invent factual details about someone else's case. If unsure, comment with a question or opinion, not an assertion.

### Target profiles for engagement

Define 4-5 profile categories to engage with, ranked by strategic value:
- Primary: People in your target audience who post regularly
- Secondary: Creators in adjacent niches (cross-pollination)
- Tertiary: High-traffic profiles in your industry (visibility play)
- Avoid: Competitors who might scrutinize your comments, blacklisted profiles

### High-traffic rule

At least 1 comment per session on a post with 200+ reactions in your niche, posted within the last hour. Commenting on high-traffic posts generates 7-12x the reach of your own organic posts.

## Step 5: Measurement and Reporting

### Weekly KPIs to track

| Metric | How to get it |
|--------|--------------|
| Impressions per post | LinkedIn analytics |
| Engagement rate | (likes + comments) / impressions |
| Profile visits | LinkedIn analytics |
| Follower growth (net) | LinkedIn analytics |
| Best performing pillar | Compare across days |
| Comment quality score | Manual audit (see below) |

### Weekly report structure

Generate every Sunday. Save as `report/REPORT-YYYY-MM-DD.md`:

```markdown
# Weekly Report — [date range]
## KPI Summary (table)
## Per-post performance (pillar, impressions, engagement rate)
## Best post analysis (why it worked)
## Week-over-week comparison
## 3 recommendations for next week
```

### Comment quality audit

Score each engagement session on these dimensions:
- **Claude mentions / 5**: How many comments mentioned the primary tool (target: max 2/5)
- **Non-niche comments / 5**: How many were off-topic (target: at least 1/5)
- **Evangelization count**: Phrases that sound like product promotion (target: 0)
- **Structure variation**: Were all comments structured differently? (target: yes)
- **Overall score**: 1-10 composite

Track these daily in a findings table. Patterns emerge after 5-7 days and guide rule adjustments.

## Step 6: Scheduled Tasks Setup

The system runs on these scheduled tasks (adapt timing to your timezone and audience):

| Task | Schedule | What it does |
|------|----------|-------------|
| `daily-post` | Every day 8:00 | Publishes the day's post + auto-comment after 20 min |
| `daily-engagement` | Every day 9:00 | 25-min engagement session (likes + comments) |
| `weekly-report` | Sunday 20:00 | Screenshots analytics, generates report |
| `weekly-planner` | Saturday 17:00 | Creates next week's content plan |

### Task implementation notes

- **daily-post** must wait 20 minutes between publishing the post and the first comment. This is non-negotiable — it mimics natural behavior.
- **daily-engagement** must run AFTER daily-post completes. Overlap causes browser conflicts.
- Each task should save logs and screenshots for audit trail.
- If browser automation fails (CAPTCHA, DOM changes), log the failure and notify the user. Never retry aggressively.

## Reference Files

For detailed implementation, read these reference files:

- `references/tov-framework.md` — Complete tone of voice framework with examples, vocabulary lists, and rhetorical patterns
- `references/anti-detection-playbook.md` — Full anti-detection methodology with scoring rubric and daily audit template
- `references/content-templates.md` — Post templates for each pillar with hook/body/closing examples

## Blacklist Management

Maintain a blacklist of profiles to never engage with. Check this list BEFORE every like, comment, reply, or DM. Format:

```markdown
| Profile | Reason | Date added |
|---------|--------|------------|
| [Name] | [Why] | [Date] |
```

If a notification, reply, or post comes from a blacklisted profile: ignore silently. Log: `Skipped [name] — blacklist.`

## Common Pitfalls

1. **Starting with engagement before identity is locked**: Results in generic comments that don't build brand.
2. **Same post length every day**: The #1 detection signal. Vary 200-1300 chars.
3. **Too many tool mentions in comments**: Makes you look like a shill. Max 2/5.
4. **No vulnerability posts**: A profile that's always perfect reads as curated/fake.
5. **Aggressive follow-up on agreements**: When someone says "great point", just like it. Don't extend the thread.
6. **Links in post captions**: LinkedIn penalizes external links. Always put them in the first comment.
7. **No pauses between actions**: Rapid-fire likes/comments trigger LinkedIn's bot detection. 20-40 second gaps minimum.
8. **Ignoring high-traffic posts**: Commenting on viral posts in your niche is the highest-leverage engagement activity.
