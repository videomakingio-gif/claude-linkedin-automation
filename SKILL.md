---
name: LinkedIn Automation
description: |
  Automate a professional LinkedIn presence end-to-end using Claude: daily posting with pillar calendar, engagement with anti-detection rules, reporting, and growth tracking. Use when the user wants to automate LinkedIn, manage a profile with AI, create a content strategy, or set up engagement automation. Triggers on: "LinkedIn automation", "automated LinkedIn", "LinkedIn bot", "LinkedIn scheduling", "LinkedIn AI management", "how do I automate my LinkedIn", "can Claude manage my LinkedIn", "LinkedIn content calendar", "LinkedIn engagement strategy", "build a LinkedIn presence", or any request involving systematic LinkedIn content creation and audience growth. Covers: identity/TOV, content planning, publishing, engagement rules, anti-pattern detection, and weekly reporting.
version: 2.0.0
author: Giovanni Liguori (github.com/videomakingio-gif)
license: MIT
---

# LinkedIn Automation Skill

This skill encapsulates a battle-tested methodology for running a professional LinkedIn profile autonomously using Claude. It was developed and validated over 12+ weeks managing a real profile (growing from 45 to 200+ followers) with 21 automations in production, without being detected as AI-managed.

## When to use this skill

Read this skill when you need to:
- Set up automated LinkedIn management for a professional profile
- Create a content strategy with pillar calendar and identity-driven TOV rules
- Build engagement automation with empirically-validated anti-detection safeguards
- Track growth metrics and optimize a LinkedIn presence
- Create scheduled tasks for LinkedIn posting, commenting, and reporting

## System Architecture

A fully automated LinkedIn system runs on a feedback loop, not a linear stack. Think of it as circular: identity → content → publishing → engagement → measurement → identity refinement (repeat).

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│     IDENTITY & TOV                                              │
│     (Archetype, tone, vocabulary, red flags)                    │
│            ↓                                                    │
│     STRATEGY & CALENDAR                                         │
│     (7-day pillar mix, emotional registers, content pillars)    │
│            ↓                                                    │
│     CONTENT CREATION                                            │
│     (Weekly post drafts with hooks, body, closing)              │
│            ↓                                                    │
│     PUBLISHING & AUTO-COMMENTS                                  │
│     (20-min wait, first comment, visual + text)                 │
│            ↓                                                    │
│     ENGAGEMENT (anti-pattern rules)                             │
│     (25-min sessions, 5-8 comments, 8-10 likes)                 │
│            ↓                                                    │
│     MEASUREMENT & FINDINGS                                      │
│     (Weekly report, comment quality audit, detection risk)      │
│            ↓                                                    │
│     IDENTITY REFINEMENT ←──────────────────────────────────────┤
│     (Adjust TOV rules, retire underperforming patterns,         │
│      tighten anti-pattern thresholds)                           │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

Each layer feeds data upward. Without the feedback loop, you'll hit problems that weren't visible at planning time.

---

## Step 1: Define Identity

Before writing a single post, create a comprehensive identity document. This is the hardest part and the most important.

### What to capture

**Archetype**: The user's professional positioning in 1 sentence. Not a job title — an archetype that captures how they create value. Examples: "Alchimista Tecnologico" (transforms technical complexity into business leverage), "Il Traduttore" (bridges two worlds that don't normally talk).

**Unique selling points**: What makes them different from 5 competitors in their space. Be specific — not "I know AI" but "I have 21 Claude automations in production managing my entire digital presence, in a stack no other Italian creator uses."

**Tone of Voice rules**:
- How they sound (direct? provocative? nurturing? analytical?)
- Sentence structure preferences (short punchy vs. long narrative)
- Vocabulary whitelist (words they actually use, not aspirational)
- Vocabulary blacklist (words that would sound fake coming from them)
- Formality level and register variations by context

**Red flags**: Absolute prohibitions. Styles and patterns that would betray the automation or damage the brand. Examples: "No motivational guru language", "Never use 'mindset'", "No countdown urgency tactics", "Never all posts the same length".

**Signature phrase** (optional): A closing line that appears on ~60% of posts. Example: "Il sistema funziona. Tu fallo partire." (The system works. You start it.)

### Identity document structure

Save as the main project instructions file (e.g., `CLAUDE.md` in the LinkedIn working directory). Structure:

```markdown
# Identity
## Who (1 paragraph: name, role, background, USP)
## Archetype (1 sentence + explanation)
## Tone of Voice
### Style rules (5-8 bullet points)
### Vocabulary whitelist (15-20 words)
### Vocabulary blacklist (10-15 words)
### Signature/closing phrase (if any)
### Red flags (what to NEVER do)
## Competitive positioning (vs 3-5 specific competitors)
## Blacklist profiles (check before every engagement action)
```

Ask the user to review this document carefully. Every post, comment, and DM will be filtered through these rules.

### Identity Questionnaire (complete before proceeding)

Answer these 15 questions to define your LinkedIn identity:

**Who you are:**
1. What's your professional title? (not your job title — how you want to be known)
2. What did you do before this? (your origin story creates credibility)
3. What's your unique stack/methodology? (the tools + approach nobody else combines)
4. What's your one-line USP? (complete: "I help [who] do [what] by [how]")

**Your voice:**
5. Name 3 people whose communication style you admire. What specifically do you like?
6. List 5 words you ALWAYS use and 5 words you NEVER use
7. What's your signature closing line? (optional but powerful for brand recognition)
8. How do you handle disagreement? (aggressive, diplomatic, Socratic, data-driven?)

**Your audience:**
9. Who is your primary audience? (job title, company size, pain point)
10. Who is your secondary audience?
11. What do they think at 2am that keeps them awake?
12. What do they Google that leads them to people like you?

**Your positioning:**
13. Name your top 3 competitors. What do they do that you don't? What do you do that they don't?
14. Complete: "Unlike [competitor], I [differentiator]"
15. What result can you prove with data? (hours saved, revenue generated, cost reduced)

---

## Step 2: Blacklist Management (Critical)

Maintain a list of profiles to never engage with. Check this list **BEFORE** every like, comment, reply, or DM.

### Format

```markdown
| Profile | Reason | Date added |
|---------|--------|------------|
| [Name] | [Why] | [Date] |
```

### Operational rule

If a notification, reply, or post comes from a blacklisted profile: **ignore silently**. Log: `Skipped [name] — blacklist.`

Never like, comment, DM, or reply to blacklisted profiles under any circumstances. No exceptions.

**Why it matters**: A single comment to a bad-faith actor can undo weeks of reputation building. It's better to miss 100 good conversations than engage with 1 person who will twist it against you.

---

## Step 3: Build the Pillar Calendar

A pillar calendar assigns a content theme to each day of the week. This creates variety, ensures topical coverage, and makes content planning predictable.

### Design principles

- **7 days, 7 pillars**: Each day has a distinct content type and emotional register
- **Mix value and promotion**: Follow the 90/10 rule (90% pure value, max 10% promotional)
- **Vary emotional register**: Not every day should be analytical. Map emotions to pillars
- **Data-driven optimization**: Track which pillar performs best (impressions, engagement rate, follower growth) and adjust over time

### Example v3.0 pillar structure (optimized for Italian B2B AI audience)

| Day | Pillar | Objective | Emotional Register | Why it works |
|-----|--------|-----------|-------------------|------------|
| Mon | Behind the Automation | Trust, transparency, authority | Curious, vulnerable | Gives readers a peek behind the curtain. Humanizes the automation. |
| Tue | Tool/Workflow | Practical utility | Pragmatic, generous | Pure value drop. Readers save it, share it, respect you for it. |
| Wed | Hot Take/Opinion | Engagement, comments | Provocative, moral | Takes a position. Creates conversation. Establishes worldview. |
| Thu | Case Study/Results | Social proof, conversions | Proud, specific | Concrete proof that the approach works. Micro-anecdotes > abstractions. |
| Fri | How-To Tutorial | Value, saves, reach | Didactic, patient | Best-performing day on LinkedIn. Tutorial format is highly shareable. |
| Sat | Storytelling | Connection, follower growth | Personal, reflective | Personal story about a lesson learned. Creates emotional bond. |
| Sun | Soft CTA | Conversions | Direct, confident | Only day where "sales tone" is acceptable. Link to product/service. |

Save as `STRATEGIA-LINKEDIN.md` or equivalent. Include for each pillar: objective, emotional register, example hooks, and rules.

### Weekly content planning

Create a `SETTIMANA-XX-POST.md` file each week with all 7 posts pre-written. Include for each post:
- Full post text (ready to copy-paste)
- First auto-comment text (published 15-30 min after the post)
- Target hashtags (max 5)
- Visual brief (if applicable)

**Length variation is critical**: Mix 1 micro-post (200-400 chars), 4-5 standard (600-1000 chars), 1 long (1000-1300 chars). All posts the same length is the #1 AI detection signal on LinkedIn.

---

## Step 4: Post Format and Writing Rules

### Post anatomy

```
[HOOK — 1 sentence that stops the scroll]

[BODY — 3-5 blocks of 1-3 sentences each]
[Each block = 1 idea]
[White space between blocks]
[At least 1 parenthetical or "thinking out loud" moment]

[CLOSING — Signature, question, mic-drop, or imperative. Vary.]

#hashtag1 #hashtag2 #hashtag3
```

### Hook patterns

Rotate through these, never repeat 3 days in a row:

1. **Negation**: "You don't need a marketing team. You need a system."
2. **Data shock**: "I saved 40+ hours/month. Here's the system."
3. **Narrative scene**: "Monday morning. The automation crashed at 8:03."
4. **Provocative question**: "What if the problem isn't the tool but the assumption behind it?"
5. **Paradox**: "The more I automated, the more human my content became."
6. **Confession**: "I got this completely wrong last week."

### Humanization rules (critical for anti-detection)

**Why these matter**: In production testing (Days 1-16), posts following these rules scored 8.0-9.5/10 on naturalness. Posts breaking these rules scored 6.0-6.75/10.

1. **At least 1 parenthetical or "thinking out loud" moment per post**: "(honestly, I didn't expect this)", "(and here a whole chapter opens up)", "spoiler: it didn't go as planned"
2. **Informal markers** (use 2-3 per post): sentence fragments, self-questions ("Does it work? It works."), casual transitions ("That said,", "At that point,", "The thing is,")
3. **Imperfection**: Break the cleanliness. An interrupted thought, a correction, a doubt. Perfection is the enemy of authenticity.
4. **Vulnerability** (1 post every 2 weeks): Show something that went wrong, a doubt, a frustration. Pattern: "Last week I [what went wrong]. My first instinct was [reaction]. Then [what I learned]. The system now [how it improved]."
5. **Never all posts the same length**: Vary between 200 and 1300 characters across the week. Same-length posts were flagged as AI-generated by comment analysis.

### First auto-comment (mandatory, 15-30 min after publishing)

LinkedIn's algorithm amplifies posts where the author comments within 30 minutes. This is non-negotiable.

Every post gets a first comment:
- **Value posts** (Tue, Wed, Fri, Sat): A follow-up question, complementary data point, or insight not in the post. NEVER a CTA.
- **Case study posts** (Thu): Complementary insight + soft CTA to consultation/service
- **CTA posts** (Sun): Direct link to product/service
- **Behind the scenes** (Mon): Link to full blog post if applicable

**Links go in the first comment, NEVER in the post caption.** LinkedIn penalizes external links in captions (reduces reach by ~30% based on production observation).

---

## Step 5: Engagement Automation

### Session structure

- **Duration**: 25 minutes max per session
- **Actions**: 8-10 likes + 5-8 substantive comments (target: exactly 5 for consistency)
- **Timing**: Run **AFTER** the daily post completes (30+ min gap to avoid Chrome browser conflicts)
- **Pause between actions** (empirically tested):
  - Like → Comment: 25 seconds
  - Comment → Comment: 35 seconds
  - Like → Like: 20 seconds
- **Hard limits**: Max 15 comments, 30 likes per session. Stop immediately on CAPTCHA or warning.

### Comment quality rules

- **Minimum 2 lines** per comment. Never "Great post!" or generic praise.
- **Add value**: a data point, a personal experience, an intelligent question, or partial disagreement.
- **Match the profile's TOV**: Use the same vocabulary, same formality level, same patterns as the posts.
- **Variation**: Each comment should be structured differently. Never use the same pattern on consecutive comments.

### Anti-pattern rules (empirically validated)

These rules were developed through real-world testing (Days 1-16) and prevent comments from being identifiable as AI-generated. Violations caused engagement quality scores to drop from 9.0 to 6.75.

**1. Max 2 of 5 comments per session can mention the user's primary tool/product.**

**Why**: Day 1 testing showed 3/5 mentions was flagged as "too many — looks like promotion". Day 3 showed 0/5 was possible but broke brand authenticity. Day 7 confirmed 2/5 is the empirically stable threshold. Example:
- ✅ Session with 2/5 Claude mentions scored 9.0/10
- ❌ Session with 3/5 Claude mentions scored 6.75/10

**2. Vary comment structure.** NEVER use the same pattern on consecutive comments. Rotate between:
- Provocative question (no assertion, just a query)
- Data + opinion (concrete fact + take on it)
- Cross-sector parallel (analogy from different industry)
- Partial disagreement with evidence
- Confirmation with specific anecdote

**3. At least 1 comment per session on an off-topic theme**: business strategy, freelancing, pricing, market dynamics — something outside the user's core niche.

**Why**: Days with 0 off-topic comments scored 6.0/10 (looked too specialized). Days with 1-2 off-topic comments scored 8.5-9.0/10.

**4. Limit "evangelization" phrases** ("I use it every day", "the difference is clear") to max 1 per session.

**Why**: Production data showed >1 phrase triggered pattern-matching by comment readers. Phrases like "Lo uso quotidianamente" repeated in multiple sessions raised suspicion.

**5. When someone agrees with you, just like. Don't reply.**

**Why**: Continuing a thread where someone already validated your point sounds verbose and artificial. Day 4 testing confirmed this: continuing agreements broke naturalness.

**6. Research before commenting on posts with specific facts.**

**Why**: Day 8 incident: Profile-B post cited a specific case. A comment asserting facts about the case without verifying it was exposed as potentially fabricated. Rule now: If a post cites a specific case/company/study, verify it exists in 30 seconds. If unsure, comment with a question or opinion, not an assertion.

**7. Target posts <6 hours old for maximum reach.**

**Why**: Production data shows commenting on fresh posts (posted <60 min ago) generates 7-12x more reach than commenting on day-old content. Priority: scan feed for hot posts first.

### High-traffic engagement rule

At least 1 comment per session on a post with 200+ reactions in your niche, posted within the last hour. Commenting on high-traffic posts generates 7-12x the reach of your own organic posts. This is the highest-leverage engagement activity.

### Target profiles for engagement

Define 4-5 profile categories, ranked by strategic value:
- Primary: People in your target audience who post regularly
- Secondary: Creators in adjacent niches (cross-pollination)
- Tertiary: High-traffic profiles in your industry (visibility play)
- Avoid: Competitors who might scrutinize your comments, **blacklisted profiles**

**Always check the blacklist before engaging.**

### Epistemic Verification Gate

Before publishing any content (posts, comments, case studies, or DMs), run it through the 7-checkpoint epistemic verification gate documented in `references/epistemic-verification.md`. This is especially critical for engagement comments that reference specific cases, people, or events.

**The 7 checkpoints (brief):**

1. **Fact vs. Inference:** Is this verified fact or inferred pattern? Use appropriate language ("I've noticed" vs "I measured").
2. **Uncertainty Markers:** Label your confidence level — verified, observed, inferred, or speculative.
3. **Source Attribution:** If citing external data, name the source. Never write "I read somewhere..."
4. **Temporal Coherence:** Is the timeframe clear? Don't present outdated info as current.
5. **Case-Specific Claims Gate (CRITICAL):** If commenting on someone else's case/company/situation, verify facts or rephrase as questions. If unverifiable in 30 seconds, don't assert it.
6. **Self-Assessment Bias Check:** For your own posts/case studies, separate measured results from estimates. Don't overclaim.
7. **Absence-as-Proof Check:** Never treat "I didn't find evidence against X" as proof that "X is true."

**Scoring after verification:**
- **7/7 pass:** Publish immediately
- **5-6/7 pass:** Fix failing checkpoints, then publish
- **<5/7 pass:** Rewrite from scratch. Structural epistemic problems.

**Why it matters:** One factually wrong comment on a high-traffic post can expose the automation and destroy weeks of trust-building. Checkpoint 5 (case-specific claims) is where most damage occurs — it's the most common failure mode in autonomous engagement.

See `references/epistemic-verification.md` for the full framework, scoring examples, and FAQ. Adapted from [Clarity Gate](https://github.com/frmoretto/clarity-gate) by Francesco Marinoni Moretto.

---

## Step 6: Scheduled Tasks Implementation

The system runs on these scheduled tasks. Adapt timing to your timezone and peak audience hours.

### Core task: daily-post (8:00 AM)

1. **Determine the current day** of the week
2. **Locate the correct content file** (e.g., `SETTIMANA-XX-POST.md`)
3. **Check for visual asset**: Look in `/visuals/SETTIMANA-XX/[giorno].png`
   - If visual exists: attach it to the post
   - If visual doesn't exist: publish text-only (text always takes priority)
4. **Open LinkedIn** via browser automation
5. **Publish the post** (full text from the weekly plan file)
6. **Wait exactly 20 minutes** (this is non-negotiable)
   - Why: LinkedIn's algorithm amplifies posts when the author comments within 30 min. 20-min wait mimics realistic human behavior while hitting the optimal window.
   - Implementation: Use a sleep/delay command, not a polling loop
7. **Publish the first auto-comment** (text from weekly plan)
8. **Save screenshot** of post + comment for audit trail

### Core task: daily-engagement (9:00 AM, runs AFTER daily-post)

1. **Check Chrome MCP health**: If offline, log failure and notify user (don't retry)
2. **Open LinkedIn** via browser automation
3. **Scan feed for high-traffic posts** (200+ reactions, posted <60 min ago)
4. **Execute 25-minute engagement session**:
   - 8-10 likes (spread across 25 min, 20-25s between likes)
   - 5 substantive comments (target: exactly 5)
   - Pauses: 25s after like→comment, 35s between comment→comment, 20s between like→like
5. **Verify anti-pattern compliance**:
   - 0-2 tool mentions (not 3+)
   - All 5 comments structured differently
   - At least 1 comment on off-topic theme
   - Max 1 evangelization phrase
   - No replies to agreements
   - All comments are 2+ lines
6. **Stop immediately** on CAPTCHA, warning, or DOM errors (don't retry)
7. **Log all actions**: profiles engaged, comment text (snippet), pause timings
8. **Save screenshots** of comments for audit trail

### Task: weekly-report (Sunday 20:00)

1. Take screenshot of LinkedIn analytics dashboard
2. Capture impressions, engagement rate, profile visits for the week
3. Screenshot best-performing post and worst-performing post
4. Compile all daily logs (posts published, engagement sessions, errors)
5. Generate report in `report/REPORT-YYYY-MM-DD.md`:
   - KPI summary table (impressions, engagement rate, follower growth, comments per post)
   - Per-post performance (pillar, impressions, engagement rate, comments)
   - Best post analysis (why it worked: hook? timing? emotional register?)
   - Week-over-week comparison (vs previous week)
   - 3 recommendations for next week (which pillar underperformed, which rules to tighten)
   - Comment quality audit (tool mentions, non-niche coverage, evangelization count, structure variation)

### Task: weekly-planner (Saturday 17:00)

1. Read the previous week's report
2. Read production findings/recommendations (if available)
3. Create next week's `SETTIMANA-XX-POST.md` with:
   - 7 posts pre-written (respecting all humanization rules)
   - First auto-comment for each post
   - Hashtags (max 5 per post)
   - Visual briefs (description for visual generation)
4. **Apply humanization rules checklist**:
   - Exactly 1 micro-post (200-400 chars)?
   - At least 3 hook narratives on 7 posts?
   - Exactly 1 parenthetical/thinking-out-loud per post?
   - Signature "Il sistema funziona..." on ~4 posts?
   - Emotional register varies by pillar?
   - 1 vulnerability post this week or next?
5. Run visual generation task (Google Flow or equivalent) to create `/visuals/SETTIMANA-XX/` assets

---

## Step 7: Measurement and Reporting

### Weekly KPIs to track

| Metric | Why it matters |
|--------|----------------|
| Impressions per post | Shows content reach (healthy: 15-40/post for <500 followers) |
| Engagement rate | (likes + comments) / impressions (healthy: 2-5%) |
| Profile visits | Indicator of content pulling people to profile |
| Follower growth (net) | The final metric: are you growing? |
| Best performing pillar | Which content type resonates most? (optimizes future calendar) |
| Comment quality score | Are engagement comments natural or flagged patterns? |

### Comment quality audit

Score each engagement session on these dimensions:

- **Tool mentions / 5**: Count comments mentioning the primary tool (target: 0-2/5)
- **Non-niche comments / 5**: Count off-topic comments (target: ≥1/5)
- **Evangelization count**: Count phrases that sound promotional (target: 0-1 max)
- **Structure variation**: Were all comments structured differently? (target: yes)
- **Overall score**: Composite 1-10. Target: 8.0+

Track these daily in a findings table. Patterns emerge after 5-7 days and guide rule adjustments.

### Adaptation by follower stage

**Stage 1 (0-100 followers):**
- Focus: consistency + voice clarity over reach
- Engagement target: 5-8 comments/day (build relationships with small audience)
- Content: 70% value, 30% personal story (build trust)
- Pillar performance varies wildly; don't optimize yet

**Stage 2 (100-1000 followers):**
- Focus: pillar optimization + viral posts
- Engagement target: 8-10 comments/day + 10-15 likes/day
- Content: 80% value, 20% CTA (authority established, now monetize)
- Track which pillars drive engagement; double down on winners

**Stage 3 (1000+ followers):**
- Focus: thought leadership + high-ticket conversions
- Engagement target: 10-15 comments/day (shift to quality over quantity)
- Content: 85% value, 15% product/service (authority is assumed)
- Build community; comments become conversations with influencers

---

## Step 8: Handling Production Failures

This section documents real failures from production (Days 1-16) and how to handle them.

### Chrome MCP instability

**Problem**: Browser automation fails randomly (3-4 failures per 10 sessions). Causes:
- Extension loses connection to host
- DOM detaches mid-operation (happens when commenting directly on feed posts)
- JavaScript timeouts on large pages

**Solution**:
- Before every task, run a health check: try navigating to LinkedIn home page
- If offline, log failure and **notify user immediately** (don't retry)
- Workaround for comment failure: navigate to profile activity page instead of feed; comment form is more stable there
- Workaround for JavaScript: use `range.selectNodeContents(editor)` + `execCommand('delete')` to clear comment box, not `Ctrl+A` (selects entire page)

### LinkedIn DOM changes

**Problem**: LinkedIn updates DOM structure frequently. Selectors break. Example: like button coordinates change between sessions.

**Solution**:
- Use `getBoundingClientRect()` to get current element position instead of hardcoded coordinates
- Avoid clicking on reaction counter (opens modal); click center of button instead
- For profile navigation: if `/in/nome-cognome/` returns 404, use LinkedIn People Search with name + company keyword

### Timing conflicts

**Problem**: daily-post and daily-engagement run in parallel, both trying to control browser → crashes

**Solution**:
- daily-post must complete fully (including 20-min wait + auto-comment) before daily-engagement starts
- Build 30-min minimum gap between task start times
- If tasks overlap, log error and skip engagement session (post is priority)

### Missing logs on weekends

**Problem**: Task fails silently on weekends; no fallback log created

**Solution**:
- Every task must write a **minimum fallback log** even if it fails:
  - Date, time, task name
  - Status (success / failure)
  - If failure: reason (Chrome offline / DOM error / timeout)
- Append to a weekly error log file for monitoring

---

## Step 9: Inbound DM Strategy

DMs are the highest-intent signal on LinkedIn. Someone who writes to you has already decided you're worth their time.

### Triage Rules

- **Connection request + message:** Respond within 24h. Acknowledge their specific reason for connecting.
- **Question about your content:** Respond with value. Answer the question, then ask one back.
- **Service inquiry:** Don't sell immediately. Ask 2 qualifying questions first: "What's the specific problem?" and "What have you tried?"
- **Generic "let's connect":** Accept silently. No response needed.
- **Spam/pitch:** Ignore. Don't engage.

### Response Framework

1. **Acknowledge** — Reference something specific from their profile or message
2. **Value** — Give them something useful (insight, resource, perspective)
3. **Bridge** — Connect to a natural next step (not a sales pitch)

### Anti-Pattern: The Premature Pitch

Never respond to a DM with a link to your product/service in the first message. The conversion rate is near-zero and the reputation cost is high. Build 2-3 exchanges of genuine value before any mention of paid offerings.

### Automation Note

DM responses are the hardest to automate convincingly. The risk/reward ratio is unfavorable: a robotic DM response from a high-intent lead destroys more value than a missed response. Recommended approach: flag inbound DMs for human review, provide draft responses, but require manual approval before sending.

---

## Step 10: When Things Go Wrong (Real Failure Cases)

### Failure 1: The Factual Error

**What happened:** The engagement bot commented on a post about a specific industry case, asserting details it didn't actually know. The post author asked "what do you mean by that?" exposing the gap.

**Root cause:** No fact-checking gate before commenting on posts with specific claims.

**Fix:** Rule 7 in anti-detection playbook — mandatory context research before commenting on posts with specific facts. If unverifiable in 30 seconds, rephrase as opinion or question.

**Recovery:** Delete the comment if possible. If the author already replied, own the mistake briefly: "You're right, I was reasoning from a general pattern, not this specific case. Thanks for the correction."

### Failure 2: The Chrome MCP Crash

**What happened:** The daily engagement task ran at 8:30, overlapping with the daily post task still running at 8:00. Chrome MCP can only handle one session at a time. Both tasks failed silently.

**Root cause:** Insufficient gap between scheduled tasks sharing the same browser session.

**Fix:** Moved engagement from 8:30 to 9:00. Minimum 30-minute gap between any two Chrome MCP tasks.

**Recovery:** Re-run the failed task manually. Check the log for partial execution (half-posted content is worse than no content).

### Failure 3: The Repetitive Pattern

**What happened:** Over 5 days, all engagement comments followed the same structure: [observation] → [personal experience with Claude] → [generalizable insight]. A human reviewer flagged it as "obviously AI."

**Root cause:** No structural variation enforcement in the engagement rules.

**Fix:** Anti-pattern rules 1-4 in the playbook. Max 2/5 comments can mention Claude. At least 1 comment must be on a non-AI topic. Never repeat the same rhetorical structure on consecutive comments.

**Recovery:** Pause engagement for 48 hours. When resuming, start with 3 days of pure observation (likes only) before commenting again.

### General Recovery Protocol

1. **Detect** — Check logs daily. Silent failures are the most dangerous.
2. **Assess** — Is the damage visible? (wrong comment live) or invisible? (missed post)
3. **Contain** — Remove visible errors immediately. For missed posts, don't double-post.
4. **Fix** — Update the rule/gate that should have prevented this.
5. **Document** — Add to this section. Every failure makes the system stronger.

---

## FAQ: Common Questions

**Q: Can I skip the identity document?**
A: No. Posts without a locked identity read as generic and damage brand. Spend 2-3 hours on this.

**Q: How often should I adjust anti-pattern rules?**
A: Every week based on comment quality audit. If a rule is being violated frequently (>2 times/week), loosen it. If no violations for 2 weeks, tighten it.

**Q: What if I disagree with a pillar assignment?**
A: Swap it. The default calendar is optimized for Italian B2B AI audience. Your audience may prefer different content on different days. Test for 2 weeks, measure engagement, adjust.

**Q: Can I post more than once per day?**
A: Don't. LinkedIn's algorithm penalizes author account for same-day multiple posts (reduces reach on all of them). Stick to 1/day.

**Q: What if the first auto-comment doesn't publish in 30 min?**
A: Publish it manually 30-45 min after the post. The goal is hitting the 30-min window; 30-45 is acceptable.

---

## Reference Files

For detailed implementation, refer to these files in the project:

- `CLAUDE.md` — Master identity document with complete TOV rules, vocabulary lists, and blacklist
- `STRATEGIA-LINKEDIN.md` — Full strategy document with pillar details and emotional register mapping
- `SETTIMANA-XX-POST.md` — Weekly content plan (create new each week)
- `report/REPORT-YYYY-MM-DD.md` — Weekly measurement report
- `experiment/meta/findings.md` — Production findings, recommendations, and anti-pattern rule updates

---

## Final Principle

This system works because it treats identity and anti-detection not as separate concerns, but as the same thing. A profile with a clear, consistent identity that is humanized and vulnerable is **inherently** less likely to be flagged as AI. It's also more likely to convert followers to customers.

Don't optimize for scale first. Optimize for naturalness first. Scale follows.
