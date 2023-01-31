# General style for Jupyter Notebooks


## Markdown



### General style
- Notebook title is H1 and includes Workshop Name: Subtitle
- Keep the scaffolding at the top and bottom of the template notebook intact
- Use H1 for main headers that are referred to in the "Sections" section.
- All headers are in Title Case.
- Use H2 for subsections. These do not need to be linked to in the "Sections" section at the top of the notebook.
- Use H3 headers for subsubsections. Don't go lower than H3 if you can avoid it.
- Use emoji specified in the "Icons Used in This Notebook" section
- Keep narrative text limited!
- Avoid discussion of edge cases or caveats.
- Use colloquial language and minimal jargon; if you need it, explain it.
- Use **boldface** to highlight key concepts and important terms, but use it sparingly.
- Don't use italics.
- Use en-dash for lists.
- Use `code font` for anything in code like variables, functions, and packages.
- Use `code font` for menu items (like `Restart Kernel`), and data frame rows/columns.
- When discussing functions, include the trailing parentheses (e.g. `print()`).
- When discussing methods, include the dot (e.g. `.sum()`).
- Consistently use emoji for relevant sections. See below for some examples.

### Learning Objectives
- At least 3, max 6 per notebook.
- Keep them short – one line each.
- Use [learning objective verbs](https://swcarpentry.github.io/swc-releases/2016.06/instructor-training/20-lessons/). E.g. "Distinguish between the main data types in Python."

### Challenge
- Challenges are typically formatted as H2 / subsection (##).
- Challenges use the 🥊 Boxing Glove emoji in the header.
- Try to have at least one exercise every 15 minutes of instruction. More is better. A two-hour workshop needs at least **six challenges**.
- Challenges have names, and are numbered. You should reference those names in the Solutions file.
- Plan around 8 minutes for each challenge (including discussion of the solution and questions).
- Don't use "Bonus Challenges" or the like. If really needed, use a "Take-Home Challenge" (1 max!) so it's clear these can be completed outside the workshop.
- Copy filled-in challenges over to a solutions notebook that goes into the "solutions "folder.
- See the Jupyter notebook template for an example.
- Code cells in Challenges are two lines. The first says `# YOUR CODE HERE`, the second is empty.
- Code cells in Challenges can be scaffolded. Use three dots (...) to indicate scaffolding. 

### Tip
- Tips can be formatted as subsection (##) when they're more substantial.
- Tips can be used without header when they are less substantial.
- Tips use the 💡 Electric Light Bulb Emoji in the header / at the start of the line, followed by boldface **Tip:**, followed by the tip.
- Tips are not numbered.
- Keep them short and to the point.
- See the Jupyter notebook template for an example.

### Question
- Questions are used without header.
- Questions use the 🔔 Bell Emoji at the start of the line, followed by boldface **Question:**, followed by the question.
- Questions are short queries about code or concepts.
- Questions do not require participants to enter code.
- Questions can be used as attention checks, and discussed during the workshop.
- See the Jupyter notebook template for an example.

### Warning
- Warnings are used without header.
- Warnings use the ⚠️ Warning Sign Emoji at the start of the line, followed by boldface **Warning:**, followed by the warning message.
- Warnings act as short reminders to participants of common mistakes and errors.
- See the Jupyter notebook template for an example.

### Demo
- Demos can be used at the end of a notebook to show / highlight some advanced functionalities outside the scope of the workshop.
- Demos use the 🎬 Clapper Board Emoji at the start of the header.
- Demos are written as main sections (#) that are linked to in the "Sections" section.
- Demos can used once per notebook.
- Demos can be used to enthuse participants, and to point them to relevant other D-Lab workshops.
- Demos are meant to be short: 5-10 mins max.

### Key Points
- Key Points are at the bottom of the notebook.
- Key Points recap the most important concepts and ideas covered.
- Use at least 3 and at most 8 Key Points.


## Python style

We follow [PEP](https://peps.python.org/pep-0008). This guide summarizes some of what's in there.


### Indentation

```
# Correct:

# Aligned with opening delimiter.
foo = long_function_name(var_one, var_two,
                         var_three, var_four)

# Add 4 spaces (an extra level of indentation) to distinguish arguments from the rest.
def long_function_name(
        var_one, var_two, var_three,
        var_four):
    print(var_one)

# Hanging indents should add a level.
foo = long_function_name(
    var_one, var_two,
    var_three, var_four)
```

### Imports

Imports are always put at the top of the cell. Imports should usually be on separate lines:

```
# Correct:
import os
import sys
# Wrong:
import sys, os
```


### Strings

In Python, single-quoted strings and double-quoted strings are the same. We do
not make a recommendation for this. Pick a rule and stick to it. When a string
contains single or double quote characters, however, use the other one to avoid
backslashes in the string. It improves readability.


### Whitespace

Avoid extraneous whitespace in the following situations:

- Immediately inside parentheses, brackets or braces:

```
# Correct:
spam(ham[1], {eggs: 2})
# Wrong:
spam( ham[ 1 ], { eggs: 2 } )
```

- Between a trailing comma and a following close parenthesis:

```
# Correct:
foo = (0,)
# Wrong:
bar = (0, )
```

- Immediately before a comma, semicolon, or colon:

```
# Correct:
if x == 4: print(x, y); x, y = y, x
# Wrong:
if x == 4 : print(x , y) ; x , y = y , x
```

Always surround these binary operators with a single space on either side:
assignment (=), augmented assignment (+=, -= etc.), comparisons
(==, <, >, !=, <>, <=, >=, in, not in, is, is not), Booleans (and, or, not).


### Comments

Comments that contradict the code are worse than no comments. Always make a
priority of keeping the comments up-to-date when the code changes!

Comments should be complete sentences. The first word should be capitalized,
unless it is an identifier that begins with a lower case letter (never alter
the case of identifiers!).

Block comments generally consist of one or more paragraphs built out of complete
sentences, with each sentence ending in a period.

Don't use inline comments.
