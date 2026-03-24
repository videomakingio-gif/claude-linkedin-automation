# Epistemic Verification Gate

Adapted from [Clarity Gate](https://github.com/frmoretto/clarity-gate) by Francesco Marinoni Moretto for LinkedIn content verification.

## Why This Matters

Autonomous systems that post and comment on behalf of humans face a unique risk: **confident hallucination in public**. A blog post with a wrong fact gets corrected quietly. A LinkedIn comment with a wrong fact gets called out publicly, permanently.

When you're managing a profile at scale (21 automations, daily posts, 25-minute engagement sessions), the volume of content increases exponentially. So does the risk. One factually wrong comment on a high-traffic post can:
- Expose the automation to the original poster and their network
- Create a search result that contradicts future claims
- Destroy weeks of trust-building in a single thread

This gate prevents that.

## The 7 Checkpoints (LinkedIn-Adapted)

### 1. Fact vs. Inference Label

Before posting any comment or post that contains a factual claim:

- Is this a **FACT** you can verify? → Proceed confidently
- Is this an **INFERENCE** from a pattern? → Mark with hedging language ("I've noticed", "the pattern suggests", "in my experience")
- Is this a **GUESS**? → Rephrase as a question

**Example of the problem:**
- ❌ "Nobody had signed off on the deploy responsibility" (stated as fact about someone else's case — you don't know this)
- ✅ "The pattern I see here is a gap in deploy ownership. Was that the case?" (framed as observation + question — humble and verifiable)

### 2. Uncertainty Marker Enforcement

Every post and comment must be scanned for confidence levels. Use precise language for each:

**Verified** (own data, measured):
- "In our system, X produces Y"
- "Over 12 weeks, we measured Z"
- "I calculated this myself"

**Observed** (pattern you've seen):
- "What I've seen is..."
- "The trend seems to be..."
- "In my experience..."

**Inferred** (conclusions from limited data):
- "This suggests..."
- "If the pattern holds..."
- "My hypothesis is..."

**Speculative** (hypotheses, predictions):
- "I wonder if..."
- "My speculation: X might lead to Y"
- "This is a guess, but..."

### 3. Source Attribution

When referencing external data, studies, cases, or industry claims:

- **Named sources**: Include the source. "According to McKinsey's 2025 report, X is true because Y."
- **Unnamed sources**: Don't include the claim. Never write "I read somewhere that" and then assert a fact. If you can't name the source in 5 seconds, you're relying on memory, not verification.
- **Posts you're commenting on**: Always read the FULL post before asserting facts about it. Don't rely on the preview text in your feed. Click "see more" or open the full post. A post's nuance lives in the details.

### 4. Temporal Coherence

- Don't present outdated information as current ("AI can't do X" — true in 2023, false in 2026)
- Mark time-sensitive claims: "As of March 2026...", "In early 2026...", "The latest data shows..."
- Don't use present tense for past events unless they're still ongoing

**Example:**
- ❌ "This approach changed the industry" (when? is it still being used?)
- ✅ "This approach changed the industry in 2024 and is now standard practice" (temporal clarity)

### 5. Case-Specific Claim Gate (Most Critical for Engagement)

This is the most important checkpoint for engagement comments. It prevents the #1 failure mode: confidently asserting facts about someone else's situation when you don't actually know them.

**The rule:**
If your comment contains a factual assertion about someone else's case, that assertion must be verifiable. If it's unverifiable in 30 seconds, rephrase as opinion or question.

**Practical logic:**

1. **Do you KNOW this case from direct experience?** (You built something identical, you managed this client, you lived this situation)
   → Comment freely with specific details

2. **Did you RESEARCH this case?** (30-second web search, reading the full post, checking the company website)
   → Comment with verified details only; cite your source implicitly ("Based on what I read, X happened. Is that accurate?")

3. **Do you know NOTHING about this case?** (The poster mentioned a company, event, or person you've never heard of)
   → Comment on the GENERAL PRINCIPLE only, never on specific details

**Examples showing the gate in action:**

*Post example:* "Last week we implemented OAuth2 at Baudr. The rollout was chaos because no one had signed off on the deploy responsibility."

❌ **FAILS Gate 5:**
"Yeah, this is what happens when orgs don't have proper deployment approval workflows. Huge red flag."
(You're asserting facts about their specific situation — who said they don't have workflows? Maybe they have workflows but they broke. You don't know.)

✅ **PASSES Gate 5:**
"Governance gaps in deployment are brutal. Was the problem a missing workflow, or a workflow that wasn't enforced?"
(You're commenting on the general principle and asking for clarification, not asserting facts you don't know.)

**The difference is everything.** The first comment will be flagged as potentially fabricated if you got the details wrong. The second comment is safe because it's humble and inquisitive.

### 6. Self-Assessment Bias Check

Watch for these patterns in your own content. These are where autonomous systems most commonly overclaim:

**Overclaiming results:**
- ❌ "40 hours saved"
- ✅ "Measured: 40+ hours/month reduction over 12 weeks (N=1 profile)"

**Attribution errors:**
- ❌ "Claude did X"
- ✅ "The combination of Claude Code + Python + GCP Cloud Run achieved X"

**Survivorship bias:**
- ❌ "This method works"
- ✅ "This method worked for my case (a small B2B automation profile). Your mileage may vary depending on [variable]."

**For case studies specifically:** Separate MEASURED results from ESTIMATED projections.
- [MEASURED] = data you collected and can prove
- [ESTIMATED] = extrapolations you made, labeled as such
- [PROJECTED] = "If you applied this to Y, you'd get Z" (clearly speculative)

### 7. Absence-as-Proof Check

Never treat "I couldn't find evidence against X" as proof that "X is true."

**Examples:**
- ❌ "No one in Italy is doing this" (you haven't searched comprehensively)
- ✅ "I haven't found anyone in Italy doing this publicly" (honest about your search scope)

- ❌ "Nobody has solved this problem yet" (overconfident)
- ✅ "I haven't found a public solution to this problem" (admits you might have missed something)

---

## Integration Points

### For Posts (daily-post task)

Run checkpoints **1, 2, 4, 6, 7** before publishing. These are self-referential (about your own work), so checkpoint 5 (case-specific claims) is less critical since you're not asserting facts about others' situations.

**Exception:** If your post mentions another creator, company, or case study that isn't yours, run checkpoint 5 too.

**Action:** Before the `daily-post` task publishes, have a human (or a secondary checkpoint) scan the post for any of these issues:
- Overclaimed results (does [MEASURED] label appear?)
- Temporal ambiguity (is the timeframe clear?)
- Unattributed external claims (did you cite the source?)

### For Engagement Comments (daily-engagement task)

Run **ALL 7 checkpoints**, with special emphasis on checkpoint 5 (Case-Specific Claim Gate). This is where the highest-risk errors happen because:

1. You have limited context (just the post + feed preview)
2. You're responding quickly (25-min engagement sessions discourage deep research)
3. The comment is public and permanent

**Action:** Before the `daily-engagement` task publishes any comment, scan it for:
- Case-specific assertions about the poster's situation (use checkpoint 5)
- Unverified external claims (use checkpoint 3)
- Overclaimed experience or expertise (use checkpoint 6)

If any of these are present, either:
- Revise the comment to rephrase as question/opinion, or
- Skip this post and find another to comment on

### For Case Studies and Blog Posts

Run all 7 checkpoints + add explicit confidence markers in the content itself.

**Formatting:**

Use these labels inline where they help the reader understand your confidence level:

- `[MEASURED]` for data from your own systems ("Over 12 weeks, I measured X change...")
- `[ESTIMATED]` for projections or approximations ("If you applied this to a 50-person team, estimated savings would be...")
- `[INDUSTRY DATA]` for third-party statistics ("According to LinkedIn's 2026 Workplace Report, X percent of...")

**Why this matters:** Readers need to know the difference between "I proved this works" and "this might work for you based on my assumptions."

---

## Scoring

After running all 7 checkpoints on a piece of content, assign a confidence score:

| Score | Action |
|-------|--------|
| **7/7 pass** | Publish immediately. No concerns. |
| **5-6/7 pass** | Fix the failing checkpoints, then publish. Usually takes 2-5 minutes of rewording. |
| **<5/7 pass** | Rewrite from scratch. The content has structural epistemic problems that rewording won't fix. |

**Example scoring:**

Post: "Claude is the best AI tool for business automation. I replaced my entire team with Claude."

- Checkpoint 1 (Fact vs Inference): ❌ Fact stated as universal ("best" — inference)
- Checkpoint 2 (Uncertainty Marker): ❌ No hedging language
- Checkpoint 3 (Source Attribution): ⚠️ Partial (no external sources, but personal experience)
- Checkpoint 4 (Temporal Coherence): ✅ Pass (present tense is appropriate)
- Checkpoint 5 (Case-Specific): N/A (not about someone else's case)
- Checkpoint 6 (Self-Assessment Bias): ❌ Overclaimed ("replaced entire team")
- Checkpoint 7 (Absence-as-Proof): ✅ Pass

**Score: 2/7.** Rewrite. Better version:

"Over 18 months, I've used Claude to automate 40% of the repetitive tasks my team was doing. The work is more valuable now. Here's how I structured it..."

New score: 6/7 (only missing detailed checkpoint 3 source attribution, which is acceptable for personal experience).

---

## Rules of Thumb

**For posts:**
- If you state a number, can you defend it? If not, remove the number or add an uncertainty marker.
- If you describe someone else's situation, did you verify it? If not, ask a question instead.
- If you're listing "best practices," are they actually best or just your best? Label accordingly.

**For engagement comments:**
- If your comment assumes you know how the poster solved problem X, you're probably violating checkpoint 5.
- If you're mentioning someone else's tool/method/result, cite where you learned about it or ask for clarification.
- "In my experience" is a valid hedge for patterns you've observed. Use it liberally.

**For case studies:**
- Separate the story (what happened) from the analysis (why it happened) from the lesson (what to take away).
- Mark measured results vs estimated ROI.
- Acknowledge where your specific context (team size, industry, tools) might not apply to readers.

---

## Credit and Source

This verification framework is adapted from **[Clarity Gate](https://github.com/frmoretto/clarity-gate)** by Francesco Marinoni Moretto.

Clarity Gate was designed to address hallucination and factual errors in RAG (Retrieval Augmented Generation) systems and document verification pipelines. This adaptation applies the same epistemic rigor to social media content produced by autonomous AI agents, where the stakes are different (public reputation instead of internal data quality) but the risk is equally real.

Francesco's original framework emphasizes that confidence alone is not a substitute for verification, and that transparent uncertainty markers are more trustworthy than false certainty. Both principles apply to LinkedIn automation: a comment that says "I wonder if..." is more believable and more defensible than a comment that asserts facts you can't verify.

---

## FAQ on This Gate

**Q: Doesn't this slow down engagement? Aren't I supposed to comment quickly?**
A: The 7 checkpoints should take 15-30 seconds per comment. You're not doing deep research; you're scanning for red flags. If a comment fails 2+ checkpoints, skip it and move to the next post. Speed + risk is worse than slower + safe.

**Q: What if I'm wrong about something anyway?**
A: Delete it if possible. If the poster replies, own it: "You're right, I was reasoning from a general pattern. Thanks for the correction." Honesty > defensiveness.

**Q: Do I need to apply all 7 checkpoints to every micro-comment?**
A: No. Checkpoints 1, 5, and 6 are most critical. If a comment passes those three, the other four usually follow.

**Q: What if the original post is itself factually wrong?**
A: You can comment, but use checkpoint 5 carefully. Instead of asserting the post is wrong, ask: "Have you seen data on this? I've read X, which suggests Y. Am I missing something?" This is more likely to create a genuine conversation than "That's factually incorrect."
