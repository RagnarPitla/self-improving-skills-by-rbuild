# Self-Improvement Loop: My Favorite Claude Code Skill

I've built a bunch of custom skills for Claude Code. Some are clever. Some are over-engineered. The one I actually use every single session is basically a glorified checklist.

It's called **wrap-up**. I run it at the end of every working session. It commits code, checks if I learned anything worth remembering, reviews whether Claude made mistakes it should learn from, and flags anything worth publishing. Four phases, fully automated, no approval prompts interrupting the flow.

## How This Works

The skill does four things:

### Phase 1: Ship It

This catches the "oh I never committed that" problem. I'm bad about this. I'll do an hour of work, close the laptop, and realize the next day nothing got pushed. Now Claude just does it.

It also organizes files. If I created a markdown file in the wrong directory, it moves it. If I forgot to name something properly, it renames it. Boring stuff I'd skip.

### Phase 2: Remember It

This is where the compounding happens.

Claude has a memory hierarchy (CLAUDE.md, rules, auto memory, local notes) and most people never use it deliberately. This phase forces a review: "did we learn anything that should persist?"

Over weeks, your setup gets smarter without you thinking about it.

### Phase 3: Review & Apply

This one surprised me. I added it half-expecting it to be useless. But Claude actually catches real patterns.

"You asked me to do X three times today that I should've done automatically."

Then it writes the rule and commits it. Self-improving tooling with zero effort from me.

### Phase 4: Publish It

The newest phase. Turns out a lot of sessions produce something worth sharing and I just... never get around to it.

Now Claude flags it, drafts it, and saves it. I still decide whether to post, but the draft is there instead of lost in a conversation I'll never reopen.

## The Meta Point

The best skills aren't the ones that do impressive things. They're the ones that run the boring routines you'd skip.

Every session that ends with `/wrap-up` leaves my projects a little more organized, my Claude setup a little smarter, and occasionally produces a blog post I didn't plan to write.

## Why This Matters

Most people use AI for one-off tasks. Ask a question, get an answer, move on.

But AI compounds when you close the loop. When you capture what worked. When you fix what didn't. When you build on yesterday's session instead of starting fresh every time.

That's what wrap-up does. It's not flashy. It doesn't generate impressive demos. It just makes tomorrow's session better than today's.

## Get the Skill

The full wrap-up skill is open source:

**GitHub:** [github.com/RagnarPitla/self-improving-skills](https://github.com/RagnarPitla/self-improving-skills)

Clone it, copy `skills/wrap-up/` to your `.claude/skills/` directory, and run `/wrap-up` at the end of your next session.

Or fork the repo and build your own self-improving skill library.

---

*The skill format is part of a larger framework for skills that learn, evolve, and compound over time. The repo includes the wrap-up skill, a code-review skill, documentation on the skill format, and a strategy doc for building a self-improving skill ecosystem.*

---

**About the author:** Ragnar Pitla is a Principal PM at Microsoft's Agentic team, deploying AI agents in D365 F&O via Copilot Studio. He writes about AI engineering, enterprise architecture, and building tools that compound.

[LinkedIn](https://linkedin.com/in/ragnarpitla) | [YouTube](https://youtube.com/@RagnarPitla) | [Newsletter](https://ragnarsainewsletter.com)
