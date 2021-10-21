## Vi Basics

Here are some vi basics in case you get stuck or if you'd like to learn how to use the default editor for Git.

### Command mode

Typing `:` will get you into command mode which will allow you to type editor commands.  The most common one you'll need is `:wq` which will let you save and exit.  `:q!` will let you exit without saving your changes.

> Memory tip: w = write and q = quit

### Editing a file

You'll need to get into edit mode to edit a file.  There are a few common ways to do this.  You just need to type the letter (or combo) that represents how you're trying to edit the file.  To get out of edit mode once you're done, hit the escape key.

* <kbd>i</kbd> A lowercase `i` will start edit mode where the cursor is located.
* <kbd>shift + i</kbd> An uppercase `i` will start edit mode at the beginning of the line where the cursor is located.
* <kbd>shift + a</kbd> An uppercase `a` will start edit mode at the end of the line where the cursor is located.
* <kbd>r</kbd> A lowercase `r` will let you replace a single letter, but it won't put you into edit mode.
* <kbd>s</kbd> A lowercase `s` will let you replace a single letter, and it will also put you into edit mode, so you can continue editing.
* <kbd>x</kbd> A lowercase `x` will let you delete a single character, but it won't put you into edit mode.
* <kbd>d</kbd><kbd>d</kbd> Typing two lowercase `d`'s in a row will delete the entire line where the cursor is located, but it won't put you into edit mode.

> **Pro-tip:** If you'd like to get fancy, you can type a number before many of the commands.  For example, typing <kbd>3</kbd><kbd>x</kbd> will delete three characters.
