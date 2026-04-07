<!--
  RBuild.ai | Content Asset
  YouTube Launch Video Script | By Ragnar Pitla
  https://rbuild.ai | Fingerprint: RBLD-YT-LAUNCH-2026
-->

# YouTube Video: Self-Improving Skills Framework Launch

*Script by [Ragnar Pitla](https://linkedin.com/in/ragnarpitla) | [RBuild.ai](https://rbuild.ai)*

---

## Video Metadata

**Title Options:**
1. I Built a Framework for AI Skills That Learn (Open Source)
2. Your AI Skills Are Frozen. Here's How to Fix That.
3. Self-Improving Skills: The Framework I'm Open-Sourcing Today
4. Stop Rewriting Prompts. Let Them Evolve.
5. The AI Skill Framework That Gets Better Every Time You Use It

**Recommended:** "I Built a Framework for AI Skills That Learn (Open Source)"

**Category:** AI Tools / Open Source
**Length:** 10-12 minutes
**Audience:** Claude Code users, AI engineers, developers, productivity enthusiasts

---

## Thumbnail Concept

**Visual:** Split frame - left side shows a frozen/ice-covered skill file, right side shows the same file glowing with version numbers (v1, v2, v3...) floating around it

**Text overlay:** "SKILLS THAT LEARN"

**Ragnar:** In the middle, pointing at the right side with excited expression

### Lovart Prompt
```
3D clay Pixar style, warm orange background, isometric diorama.

Left side: frozen skill document encased in ice, blue cold colors, snowflakes, static.

Right side: glowing skill document with small floating version tags (v1, v2, v3) orbiting it like planets, warm golden light, dynamic energy lines.

Center: Indian tech professional character (Ragnar) in casual clothes, pointing enthusiastically at the right side, amazed expression.

Style: Pixar clay aesthetic, soft shadows, corporate but playful, transformation theme.
```

---

## Script

### HOOK [0:00-0:30]

*[Direct to camera, energetic]*

Let me show you something that's been bothering me for two years.

*[Screen share: open a skill file]*

This is a skill I wrote. It's good. I use it all the time.

But here's the problem - it's the exact same skill I wrote two years ago. It hasn't learned anything. It hasn't improved. It's frozen in time.

*[Cut back to camera]*

Meanwhile, I've gotten better. My workflows have evolved. My edge cases have multiplied.

Why doesn't my skill keep up?

Today I'm open-sourcing my solution. Let's go.

---

### SECTION 1: THE PROBLEM [0:30-2:30]

*[Camera, walking through the problem]*

Here's what happens with AI skills right now:

You write a prompt. You save it somewhere - maybe a markdown file, maybe a GitHub repo, maybe just a note.

And then... nothing. It stays exactly as you wrote it.

*[Screen share: showing multiple static skill files]*

I have dozens of these. Code review skills. Writing skills. Analysis skills. All frozen at version 1.

*[Cut back to camera]*

And every time I use them, I notice things. "Oh, this should handle that edge case better." "Oh, I should add this instruction."

But do I update the skill? Almost never. Too much friction. I'm in the middle of something. I'll do it later.

Later never comes.

*[Animated diagram]*

So what we end up with is this weird gap. Our expertise compounds. We get better every day. But our skills don't. They're stuck wherever we left them.

*[Pause, direct to camera]*

I decided to fix this.

---

### SECTION 2: THE SOLUTION [2:30-5:00]

*[Screen share: GitHub repo]*

Welcome to Self-Improving Skills by RBuild.ai.

It's a framework for AI skills that learn, evolve, and compound over time.

*[Show the README]*

Here's how it works. Four phases.

*[Diagram animation]*

**Phase 1: Run**

You execute your skill normally. Nothing changes here.

**Phase 2: Evaluate**

After the skill runs, you rate the output. 1 to 5. Simple.

**Phase 3: Learn**

Based on your feedback, the system captures what worked and what didn't. It stores these patterns in dedicated learning files.

**Phase 4: Evolve**

When enough feedback accumulates, the skill proposes updates to itself. Creates a new version. Preserves the history.

*[Cut back to camera]*

The result? Session 50 is better than session 1. Your skills compound alongside your expertise.

---

### SECTION 3: THE SETUP [5:00-7:00]

*[Screen recording: terminal]*

Let me show you how to set this up. It takes about 30 seconds.

*[Type commands]*

```
git clone https://github.com/RagnarPitla/self-improving-skills-by-rbuild.git
cd self-improving-skills-by-rbuild
./setup.sh
```

*[Show the setup wizard running]*

The setup wizard asks you one key question: How do you want your skills to evolve?

**Option A: Post-Execution Prompts**

After every skill run, you get prompted: "Rate this output 1-5. Want me to update the skill?"

This is the most active learning mode. Great if you want maximum improvement speed.

**Option B: Wrap-Up Integration**

Learning happens at the end of your session. The wrap-up skill reviews everything at once.

"Did you modify any skill outputs today? Let's capture those patterns."

Batch processing. Less interruption.

**Option C: Manual Only**

You control when skills evolve. Use the evolve command when you're ready.

Full control. No surprises.

**Option D: All Features**

Everything enabled. A plus B plus manual controls. Power user mode.

*[Show selection and completion]*

Pick your mode. Done. Settings saved.

---

### SECTION 4: WORKS WITH YOUR SKILLS [7:00-8:30]

*[Cut back to camera]*

Now here's the part I'm most excited about.

You probably already have skills. Prompts you've written. Maybe a whole folder of them.

You don't have to start over.

*[Screen recording]*

```
./import-skill.sh ~/.claude/skills/my-existing-skill
```

One command. That's it.

*[Show the output]*

It wraps your existing skill in the self-improving structure. Adds the feedback folder. Adds version tracking. Adds the evaluation rubric.

Your original skill stays exactly the same. It just... now it can learn.

*[Cut back to camera]*

I didn't want to build something that forces you to rewrite everything. That's not how adoption works.

Import what you have. Start improving from there.

---

### SECTION 5: MY FAVORITE SKILL [8:30-10:00]

*[Direct to camera, conversational]*

Let me tell you about the skill I use every single session.

It's called wrap-up. And honestly? It's just a checklist.

*[Screen share: show the wrap-up skill]*

Four phases:

**Ship It** - Commits code I forgot to push. Organizes misplaced files. Handles the "I never committed that" problem.

**Remember It** - Reviews the session for learnable moments. Saves patterns to Claude's memory. Over time, my setup gets smarter without me thinking about it.

**Review & Apply** - This one surprised me. Claude reviews its own mistakes. "You asked me to do X three times today. I should do that automatically." Then it writes the rule and commits it.

**Publish It** - Flags content worth sharing. Drafts it. Saves it.

*[Cut back to camera]*

Self-improving tooling with zero effort from me.

*[Pause]*

And here's the thing. It's not impressive. It doesn't do anything fancy. It just runs the boring routines I'd skip.

That's the secret. The best skills aren't clever. They're consistent.

---

### SECTION 6: WHY THIS MATTERS [10:00-11:00]

*[Direct to camera, slower pace]*

Let me zoom out for a second.

Static skills are a liability. Not just for individuals - for teams, for enterprises.

*[Animated diagram]*

When someone writes a prompt and it never improves, you're leaving value on the table. Every time someone manually tweaks an output, that learning should be captured. Versioned. Shared.

The people who compound their AI skills will outpace everyone else.

*[Direct to camera]*

That's not hype. That's just how compounding works. Small improvements, consistently applied, over time.

This framework is my attempt to make that automatic.

---

### CLOSE [11:00-12:00]

*[Direct to camera, energetic]*

So that's Self-Improving Skills by RBuild.ai.

Link in the description. It's free for personal use - just keep the attribution.

*[List on screen]*

Quick recap:
- Run → Evaluate → Learn → Evolve
- Works with your existing skills
- Choose your evolution mode
- Includes wrap-up, code-review, and more

*[Direct to camera]*

If you try it out, let me know in the comments. What skill do you want to make self-improving?

Star the repo if you think skills should evolve.

Subscribe if you want more AI engineering content.

See you in the next one.

---

## B-Roll Suggestions

| Timestamp | Visual |
|-----------|--------|
| 0:30-2:30 | Static skill files, frozen metaphor imagery |
| 2:30-5:00 | Animated learning loop diagram |
| 5:00-7:00 | Terminal screen recording of setup |
| 7:00-8:30 | Import command running |
| 8:30-10:00 | Wrap-up skill file, session wrap-up output |
| 10:00-11:00 | Enterprise diagram, compounding graph |

---

## Key Clips for Shorts

1. "Your AI skills are frozen in time. Here's how to fix that." (0:00-0:30)
2. "One command imports your existing skills." (7:00-8:30)
3. "The best skills aren't clever. They're consistent." (8:30-10:00)
4. "The people who compound their AI skills will outpace everyone else." (10:00-11:00)

---

## End Screen

- Subscribe button
- Link to repo
- Related video: "My Favorite Claude Code Skill"

---

*RBuild.ai | Self-Improving Skills Framework*
