# Self-Improving Skills

An open-source framework for AI skills that learn, evolve, and compound over time.

> Skills that get better every time you use them.

## The Problem

Current AI skills are static. You write a prompt, save it as a markdown file, and it stays frozen in time. But your workflows evolve. Your edge cases multiply. Your expertise deepens.

Why don't your skills keep up?

## The Solution

Self-improving skills capture feedback loops:
1. **Execution** - Skill runs, produces output
2. **Evaluation** - Human or AI grades the output
3. **Learning** - Skill absorbs what worked and what didn't
4. **Evolution** - Skill updates itself with new patterns

The result: skills that compound. Every use makes them better.

## Quick Start

```bash
# Clone the repo
git clone https://github.com/RagnarPitla/self-improving-skills.git

# Copy skills to your Claude Code environment
cp -r self-improving-skills/skills ~/.claude/skills/

# Or use the installer
./install.sh
```

## How It Works

### Skill Anatomy

```
skills/
  my-skill/
    SKILL.md           # Core instructions
    feedback/          # Captured learnings
      successes.md     # What worked
      failures.md      # What didn't
      edge-cases.md    # Discovered edge cases
    versions/          # Evolution history
      v1.md
      v2.md
    eval/              # Self-evaluation criteria
      rubric.md        # How to grade outputs
```

### The Learning Loop

```
┌─────────────────────────────────────────────────┐
│                                                 │
│  ┌─────────┐    ┌──────────┐    ┌───────────┐  │
│  │  RUN    │───▶│ EVALUATE │───▶│  LEARN    │  │
│  │  Skill  │    │  Output  │    │  Pattern  │  │
│  └─────────┘    └──────────┘    └───────────┘  │
│       ▲                               │        │
│       │         ┌──────────┐          │        │
│       └─────────│  EVOLVE  │◀─────────┘        │
│                 │  Skill   │                   │
│                 └──────────┘                   │
│                                                 │
└─────────────────────────────────────────────────┘
```

### Feedback Capture

After each skill execution, the framework prompts:

```
How did this output perform?
1. Perfect - exactly what I needed
2. Good - minor adjustments needed
3. Okay - significant edits required
4. Poor - missed the mark
5. Failed - completely wrong

What specifically worked well?
> [Your input]

What should be different next time?
> [Your input]
```

This feedback is automatically appended to the skill's learning files.

### Automatic Evolution

When a skill accumulates enough feedback (configurable threshold), it triggers self-evolution:

1. Analyzes patterns in successes and failures
2. Proposes skill modifications
3. Creates new version with improvements
4. Preserves version history for rollback

## Starter Skills

| Skill | Domain | Description |
|-------|--------|-------------|
| `/wrap-up` | Productivity | End-of-session automation: commit, remember, self-improve, publish |
| `/code-review` | Engineering | Reviews code with evolving standards |
| `/meeting-notes` | Productivity | Synthesizes meetings, learns your format |
| `/contract-analysis` | Legal | Analyzes contracts, remembers red flags |
| `/financial-model` | Finance | Reviews models, accumulates domain patterns |
| `/content-writer` | Content | Writes in your voice, learns your style |

### Featured: wrap-up

The skill I use every single session. Four phases:

1. **Ship It** - Commits code, pushes to remote, organizes files
2. **Remember It** - Saves learnings to memory hierarchy
3. **Review & Apply** - Claude reviews its mistakes and writes rules to fix them
4. **Publish It** - Flags content worth sharing, drafts it

The best skills run the boring routines you'd skip. [Read more](skills/wrap-up/README.md)

## Contributing

### Add a Skill

1. Fork the repo
2. Create `skills/your-skill/SKILL.md`
3. Add evaluation rubric in `eval/rubric.md`
4. Submit PR with example usage

### Share Learnings

Your skill improvements can benefit everyone:

1. Export your skill's feedback folder
2. Submit PR to merge learnings into the base skill
3. Community votes on which patterns to incorporate

### Skill Quality Bar

All contributed skills must have:
- [ ] Clear purpose statement
- [ ] Evaluation rubric
- [ ] At least 3 example inputs/outputs
- [ ] Edge case documentation
- [ ] Version history initialized

## Architecture

### Core Components

```
self-improving-skills/
├── skills/              # Skill library
├── framework/           # Learning engine
│   ├── capture.py       # Feedback capture
│   ├── analyze.py       # Pattern analysis
│   ├── evolve.py        # Skill evolution
│   └── evaluate.py      # Output grading
├── cli/                 # Command line tools
│   ├── install.sh       # Installer
│   ├── feedback.sh      # Manual feedback entry
│   └── evolve.sh        # Trigger evolution
├── docs/                # Documentation
└── examples/            # Example skills
```

### Integration Points

- **Claude Code**: Native skill format
- **VS Code**: Copilot instructions export
- **OpenAI GPTs**: JSON export
- **Copilot Studio**: Dataverse skills export

## Roadmap

### Phase 1: Foundation (Current)
- [ ] Core feedback capture mechanism
- [ ] Version control for skills
- [ ] Basic evolution algorithm
- [ ] 10 starter skills

### Phase 2: Intelligence
- [ ] AI-powered pattern analysis
- [ ] Automatic rubric generation
- [ ] Cross-skill learning (patterns that apply everywhere)
- [ ] Skill composition (combine skills)

### Phase 3: Community
- [ ] Skill marketplace integration
- [ ] Leaderboard for most-improved skills
- [ ] Collaborative evolution (vote on changes)
- [ ] Enterprise skill governance

### Phase 4: Platform
- [ ] skill.rbuild.ai integration
- [ ] API for programmatic skill management
- [ ] Team skill sharing
- [ ] Analytics dashboard

## Why Fork This Repo?

1. **Skills that actually improve** - Stop rewriting prompts
2. **Community knowledge** - Benefit from collective learnings
3. **Version control** - Never lose a good version
4. **Cross-platform** - Export to any AI tool
5. **Open source** - Own your skill infrastructure

## Philosophy

> "Skills represent a learned record of successful execution of a workflow that an agent or a human can follow. If you continually evolve it as you get better, you have a rememberable way for future smarter agents and your team to access that expertise."

This repo exists because static skills are a waste. Every time you manually improve a prompt, that learning should be captured, versioned, and shared.

The enterprises and individuals who compound their AI skills will outpace everyone else.

## Links

- **Marketplace**: [skill.rbuild.ai](https://skill.rbuild.ai) (coming soon)
- **Author**: [Ragnar Pitla](https://linkedin.com/in/ragnarpitla)
- **YouTube**: [Ragnar Pitla](https://youtube.com/@RagnarPitla)
- **Newsletter**: [ragnarsainewsletter.com](https://ragnarsainewsletter.com)

## License

MIT - Use it, fork it, improve it, share it.

---

**Star this repo** if you believe skills should evolve.

**Fork this repo** to start building your own self-improving skill library.

Built by [Ragnar Pitla](https://linkedin.com/in/ragnarpitla) | RBuild.ai
