---
title: Markdown
description: 
draft: false
date: 2024-12-02
tags:
  - what-is
---
Markdown is a lightweight markup language used to display content on the web in a simple way. It's the most popular markup language because it's the easiest to get started with.

Markdown has different "flavours" or implementations that are slightly different in syntax. [[Obsidian]] notes are based on Markdown and are saved as `.md` files.

Almost every web site we use regularly is written at least partially in some form of HTML. The problem is that HTML looks like this-- not exactly the most friendly for reading OR writing.

The format called Markdown was created as a more readable _and_ writable alternative to HTML, but it isn't a direct replacement. Instead, it's kind of like another layer entirely: you write in something that looks pretty much like human prose, with minimal marks that format the text in some way.

At some point, Markdown is _rendered_: this is what's happening when you switch from source mode to Live Preview in Obsidian. This is also what's happening when you blog-- all the major blogging platforms take Markdown text and convert it into HTML. So HTML is better for displaying formatted text online, but Markdown is better when you're writing and reading in plain, unformatted text.


## Headings 

```markdown
# This is heading 1
## This is heading 2
### This is heading 3
```

Looks like this:

# This is heading 1 

## This is heading 2 

### This is heading 3 

## Creating and embedding links 

### Link to Obsidian note 

```markdown
[[Readme]]
```

Looks like this:

[Obsidian Playbook Readme](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Playbook+Readme)

### Link to note but with link text 

```markdown
[[Readme|This is the readme.]]
```

Looks like this:

[This is the readme.](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Playbook+Readme)

### Link to a public website 

```markdown
[Kavin Thangavel](https://kavinthangavel.tech)
```

Looks like this:

[Nicole](https://nicolevanderhoeven.com/)

### Link to a section of a note 

```markdown
[[content/index|index]]
```

Looks like this:

[Obsidian Playbook Readme > What's in this vault?](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Playbook+Readme#What's%20in%20this%20vault?)

### Link to paragraph in note: 

```markdown
[[Readme#^f21c74]]
```

Looks like this:  
[Obsidian Playbook Readme > ^f21c74](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Playbook+Readme#^f21c74)

### Embed note or part of notes 

Same as the previous five, but add a `!` at the start like:

```markdown
![[Readme#^f21c74]]
```

Looks like this:

Obsidian Playbook Readme

Hey! The stuff in this part of the vault used to be a Patreon-only vault, but I'm in the process of moving it into my existing vault because I hated the separation.

## What's here? 

- [Obsidian](https://notes.nicolevanderhoeven.com/Obsidian) contains information on different features and how to use them.
- [Core plugins](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Plugins/Core+Plugins/Core+plugins) goes through every single core plugin.
- [Dataview Examples](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Plugins/Community+Plugins/dataview/Dataview+Examples) contains examples of real Dataview queries.
- [Dataviewjs Examples](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Plugins/Community+Plugins/dataview/Dataviewjs+Examples) contains examples of DataviewJS queries.
- [Video database](https://notes.nicolevanderhoeven.com/databases/video-database/Video+database) has videos from my YouTube channel.
- [Workflows in Obsidian](https://notes.nicolevanderhoeven.com/obsidian-playbook/Obsidian+Workflows/Workflows+in+Obsidian) goes through a few different use cases for Obsidian.

There's more to come, but you're welcome to poke around now!

**What's new**? Check the [Changelog](https://notes.nicolevanderhoeven.com/Changelog).

## Formatting text 

### Bold text 

```markdown
**super** important
```

Looks like this:

**super** important

### Italicize text 

```markdown
*a little* important
```

Looks like this:

_a little_ important

### Strikethrough text 

```markdown
~~not important~~
```

Looks like this:

~~not important~~

### Highlight text 

```markdown
==Remember this==
```

Looks like this:

==Remember this==

### Add block quote 

```markdown
> Live long and prosper.
```

Looks like this:

> Live long and prosper.

## Embed image in vault 

```markdown
![[notebook.png]]
```

Looks like this:

![notebook.png](https://publish-01.obsidian.md/access/186a0d1b800fa85e50d49cb464898e4c/assets/notebook.png)

## Add horizontal rule 

```markdown
---
```

Looks like this:

---

## List items (bulleted) 

```markdown
- Item 1
- Item 2
```

Looks like this:

- Item 1
- Item 2

## List items (numbered) 

```markdown
1. Item 1
2. Item 2
```

Looks like this:

1. Item 1
2. Item 2

## Add a checklist 

```markdown
- [ ] Process notes
- [X] Finish book 
```

Looks like this:

- [ ] Process notes
- [x] Finish book

## Add in-line code 

```markdown
Command: `git push`
```

Looks like this:

Command: `git push`

## Add callout 

```markdown
> [!NOTE] Note
> This is a note.
```

Looks like this:

Note

This is a note.

## Add code block 

> ```python
> print('Hello world')
> ```

Looks like this:

```python
print('Hello world')
```

## Add a comment 

You can create a comment that spans over multiple lines:

```
%%
This is
a
multi-line comment.
%%
```

And that looks like this:

You can also create a comment on a single line:

```
%% But this is a comment too. %%
```

And it looks like this:

## Add a footnote 

```markdown
... as Ahrens says. [^ahrens]
[^ahrens]: Ahrens, S.(2022).
```

Looks like this:

... as Ahrens says. [[1]](https://publish.obsidian.md/#fn-1-ad0f73ade07889a8)

## Related 

- [Formatting your notes](https://help.obsidian.md/How+to/Format+your+notes)


---

1. Ahrens, S.(2022).[↩︎](https://publish.obsidian.md/#fnref-1-ad0f73ade07889a8)
