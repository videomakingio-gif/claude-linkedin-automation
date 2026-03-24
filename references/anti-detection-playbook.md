# Anti-Detection Playbook — Reference

This reference contains the full methodology for running an AI-managed LinkedIn profile without being detected as non-human. Developed through 12+ weeks of real-world testing with daily audits.

## Table of Contents
1. Detection Vectors
2. Comment Anti-Pattern Rules
3. Post Anti-Pattern Rules
4. Daily Audit Scoring
5. Non-Detection Index (NDI)
6. Escalation Procedures

---

## 1. Detection Vectors

These are the patterns that make AI-generated content identifiable on LinkedIn:

### High-risk vectors (immediate detection)
- **Uniform post length**: All posts between 800-1200 characters. Human variation: 200-1300.
- **Perfect grammar and structure**: Zero typos, zero sentence fragments, zero corrections.
- **Tool evangelization**: Every comment mentions the same tool/product.
- **Pattern repetition**: Same rhetorical structure on consecutive comments.
- **Rapid-fire engagement**: 10 likes in 30 seconds. Humans take 20-40 seconds between actions.
- **Generic praise**: "Great insight!", "Love this!", "So true!" — zero-value comments.

### Medium-risk vectors (detection over time)
- **Consistent emotional register**: Always analytical, never vulnerable or playful.
- **No off-topic interests**: A human who talks about AI also has opinions on food, music, sports.
- **Perfect timing**: Posts at exactly the same time every day (±0 minutes).
- **No engagement with replies**: Posts but never responds to comments on own posts.
- **Vocabulary uniformity**: Same 50 words recycled across all content.

### Low-risk vectors (detection by experts only)
- **Overly smooth transitions**: Every paragraph flows perfectly into the next.
- **Balanced arguments**: Always presenting both sides instead of taking a strong position.
- **Missing personal details**: No mention of specific places, people, events from real life.

## 2. Comment Anti-Pattern Rules

### The 7 rules (apply every session)

**Rule 1: Tool mention limit**
Max 2 out of 5 comments can mention the user's primary tool/product. Track this as "Claude/5" or equivalent.

Why: A human who uses Claude doesn't mention it in every conversation. They also talk about problems, ideas, frustrations, industry trends.

**Rule 2: Structure variation**
Never use the same comment structure on 2 consecutive comments. Rotate between:
- Provocative question (no answer given)
- Data point + terse opinion (no tool mention)
- Cross-sector parallel
- Partial disagreement (argue with specific point, agree with rest)
- Confirmation with specific anecdote (no tool mention)
- Honest doubt / "I wonder if..."

Why: Repetitive structure is the #2 detection signal after post length uniformity.

**Rule 3: Off-topic comment**
At least 1 comment per session on a theme outside your core niche. If you're in AI/automation, comment on: business strategy, freelancing, pricing, market dynamics, hiring, productivity without AI.

Why: Real professionals have opinions beyond their specialty.

**Rule 4: No consecutive pattern repetition**
If comment #2 used "observation + personal experience + insight", comment #3 CANNOT use the same structure. Keep a running tally.

**Rule 5: Evangelization limit**
Max 1 per session of phrases like "I use it every day", "the difference is clear", "anyone working with AI knows that...". These phrases sound like product placement.

**Rule 6: Like-only on agreements**
When someone replies to your comment agreeing ("So true!", "Exactly!", "Great point!"), respond with a like. Do NOT reply with another comment trying to extend the conversation. Replying to agreement sounds verbose and unnatural.

**Rule 7: Fact-check before commenting on specific cases**
If a post cites a specific company, person, study, or incident:
a. Read the FULL post (click "see more" if needed)
b. Web search the case if you don't know it
c. NEVER invent factual details about someone else's case
d. If unsure, comment with opinion/question, not factual assertion

Why: Getting a fact wrong about a specific case is worse than no comment at all. The original poster knows the case better than you.

### Scoring each session

| Metric | Target | Score impact |
|--------|--------|-------------|
| Tool mentions / 5 | ≤ 2 | -1 per excess |
| Off-topic / 5 | ≥ 1 | -1 if 0 |
| Evangelization | 0 | -1 per occurrence |
| Structure variation | All different | -0.5 per repeat |
| Fact-check compliance | 100% | -2 per invented fact |

Base score: 10. Subtract per table. Score < 7 = session needs review.

## 3. Post Anti-Pattern Rules

### Weekly checks

1. **Length distribution**: Chart the character count of all 7 posts. If the standard deviation is < 150, you have a uniformity problem. Target stddev: 250-400.

2. **Hook variety**: Categorize each hook (data, narrative, question, negation, confession, paradox). No category should appear more than 2x in a week.

3. **Humanization count**: Each post must have at least 1 of: parenthetical, self-question, sentence fragment, correction, doubt, "thinking out loud" moment. Count them. 7/7 or higher.

4. **Signature usage**: The signature phrase should appear on 3-5 of 7 posts. Not all, not none.

5. **Emotional variety**: Map each post to its primary emotion. If more than 2 posts are "analytical", you need more variation.

## 4. Daily Audit Template

Run this audit after each engagement session:

```markdown
# Audit — [Date]

## Post
- Published: [Yes/No]
- Auto-comment: [Yes/No, timing]
- Character count: [N]
- Humanization elements: [list]
- Hook type: [category]

## Engagement Session
- Comments made: [N/target]
- Likes given: [N]
- Tool mentions: [N/5]
- Off-topic comments: [N/5]
- Evangelization count: [N]
- Structure variation: [Yes/No]
- Fact-check needed: [N cases, N verified]

## Scores
- Session score: [N/10]
- Anomalies: [any CAPTCHA, warnings, errors]

## Non-Detection Evidence
- [List any replies, conversations, or interactions that indicate the profile is perceived as human]
```

## 5. Non-Detection Index (NDI)

The NDI measures how "human" the profile appears based on interaction quality.

### Interaction tiers

- **L1 (Strong signal)**: Someone replies to you by name, continues a multi-message conversation, refers to your previous posts, or mentions you in their own post. Weight: 2.
- **L2 (Medium signal)**: Someone asks you a genuine question, invites you to connect, or likes multiple comments of yours in one session. Weight: 1.
- **L3 (Weak signal)**: Generic likes, one-word replies ("Thanks!"), or algorithmic suggestions. Weight: 0.

### NDI formula

```
NDI = (L1_count × 2 + L2_count × 1) / (L1_count + L2_count + L3_count) × 10
```

NDI > 5.0 = healthy (people interact with you as a real person)
NDI 3.0-5.0 = acceptable but watch for trends
NDI < 3.0 = investigate — something feels off to your audience

Track NDI weekly. A declining trend is an early warning.

## 6. Escalation Procedures

### CAPTCHA or LinkedIn warning
1. Stop ALL automation immediately
2. Do not retry for 24 hours
3. Log the event with timestamp and screenshot
4. Reduce next session's action count by 50%
5. Notify the profile owner

### Detection accusation (someone publicly says "this is AI")
1. Do NOT engage with the accusation
2. Log it as an experiment data point
3. Have the profile owner respond personally if needed
4. Review the last 48 hours of content for what triggered the accusation

### Quality score consistently below 7
1. Re-read the TOV framework
2. Audit the last 5 sessions' comments side by side
3. Identify the recurring pattern (usually: too many tool mentions or same structure)
4. Adjust the rules and track improvement over 3 sessions
