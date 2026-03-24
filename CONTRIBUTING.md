# Contributing to Claude LinkedIn Automation

Thank you for your interest in contributing to this skill. We're building a dataset of empirical evidence on autonomous LinkedIn management.

## How to Contribute

### Fork, Branch, and PR
1. Fork this repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Commit with clear messages: `git commit -am 'Add: new anti-detection rule from production data'`
5. Push to your fork: `git push origin feature/your-feature-name`
6. Open a Pull Request with a description of what you added and why

### Code of Conduct

We follow a simple code of conduct:
- **Be honest.** All contributions must be based on real data, testing, or production evidence.
- **Be respectful.** Disagree on methodology, not people.
- **Be transparent.** If something failed, say so. Failures teach us more than successes.
- **Be responsible.** Remember that this code affects real accounts. Test thoroughly.

## What We Welcome

### New Anti-Detection Rules
Submit rules **only if you have empirical evidence**:
- Real incident data (day, description, what triggered it, how you fixed it)
- Testing methodology (how many times did you try this pattern?)
- Impact assessment (did it change your NDI score? By how much?)
- Example: "Rule: Never comment on posts with >2k reactions in your first week. Data: Tried this 3 times in weeks 1–3. All flagged for 'unusual activity'. After day 10, no incidents."

### TOV Patterns from Production
Share rhetorical patterns, vocabulary discoveries, or emotional register mappings **from your live profile**:
- Include engagement metrics (how did your audience respond?)
- Provide worked examples (show before/after comments)
- Document edge cases (when did this NOT work?)

### Content Templates
New templates for specific niches or industries:
- Include at least 3 worked examples
- Show how they fit into the 7-day pillar calendar
- Provide metrics if available

### Translations
Translate the skill or reference guides to new languages:
- Maintain all structure and emphasis
- Preserve legal disclaimers and warnings
- Include translator name and language in CHANGELOG

## What We Don't Welcome

### Spam Techniques
- Growth hacking tricks that violate LinkedIn's terms
- Fake engagement farming scripts
- Mass DM templates designed to spam

### ToS Circumvention Tools
- Methods to hide automation from LinkedIn's detection
- Account scraping or data harvesting
- Impersonation techniques

### Unsubstantiated Claims
- Rules without data
- "This always works" without testing
- Anecdotal advice without methodology

## How to Report Issues

Found a bug? Disagree with a rule? Have a detection incident?

1. Open an issue on GitHub with:
   - Clear title describing the problem
   - Reproduction steps (if applicable)
   - Context (day/week, what were you doing, what happened)
   - Evidence (screenshot, log, incident report)

2. For security-sensitive issues (e.g., detection bypass failures), email Giovanni directly instead of posting publicly.

## Style Guide for Contributions

### Writing Style
- Be precise. Use specific numbers, dates, and examples.
- Be concise. Avoid long paragraphs without structure.
- Use markdown effectively (headers, lists, code blocks).

### Evidence Requirements
- **Rules:** Must include "Day X incident" or "Tested Y times" data
- **Patterns:** Must include engagement metrics or user feedback
- **Templates:** Must include worked examples with context

### Commit Messages
- Use imperative mood: "Add rule for..." not "Added rule for..."
- Reference issues: "Fixes #123"
- Be specific: "Add: anti-detection rule for high-traffic posts (>2k reactions)" not "improve detection"

## Questions?

- Read the [SKILL.md](SKILL.md) for the core methodology
- Check [references/anti-detection-playbook.md](references/anti-detection-playbook.md) for how rules are scored
- Look at [examples/](examples/) for worked cases
- Open a discussion issue if you want to propose a significant change

---

**Together, we're building the most empirically grounded autonomous LinkedIn system in existence.**

Thank you for contributing.
