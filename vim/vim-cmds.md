Movement
--------
- h j k l:          Basic movement keys
- b w B W:          Move back by token/forward by token/back by word/forward by word
- 0 ^ $:            Jump to first column/first non-whitespace character/end of line
- ctrl+u ctrl+d     Basically Page Up and Page Down, but moves by half a screenful and doesn’t lose your cursor position.
- <line-number>G    Jump directly to a specific line number
- H M <L>           Move to the top/middle/bottom of the screen (i.e. High/Middle/Low). A good first step in getting approximately to where you want to go.
- # *               Find the previous/next occurrence of the token under the cursor.
- n <N>             Repeat the last find command forward/backward.
- “                 (That’s two back-ticks). Jump back to where you just were. This will jump back and forth between the same two locations if you keep pressing it.
- ctrl+o ctrl+i     Move backward/forward through the jump history. Useful if you have followed a chain of method calls and need to get back to where you were.
- gt gT <n>gt       next tab, previous tab, numbered tab

Editing
-------
- i a I A           Enter insert mode (insert at cursor/append after cursor/insert at beginning of line/append to end of line)
- o O               Open new line (below the current line/above the current line). A quick “o<esc>” will add a blank line below the current line, no matter where your cursor is.
- cw cW             Correct the token(s)/word(s) following the cursor. Basically combines delete and insert into one step.
- cc                Correct line(s) by clearing and then entering insert mode. Starts inserting at the current indent level.
- dd <N>dd d<N>G    Delete line. Delete <N> lines. Delete up to line <N>
- ct cf ci ca
- dt df di da       Correct/delete up to or including specific characters. Since there are many variations, I break it down in the section below about correcting text.
- s                 Delete character(s) at the cursor and then enter insert mode
- yy                Copy line(s).  The “y” is for “yank.”
- yw yW             Copy token(s)/word(s).
- p P               Paste the last thing that was deleted or copied before/after cursor
- u ctrl+r          Undo and redo.
- .                 (That’s a period). Repeat the previous edit command

Copy paste
--------------------------------
- v V ctrl+v ctrl+q     character, line, block selection (visual mode)
- d y                   delete or yank
- q P                   paster after or before cursor
- *yy                   paste to clipboard

Search replace
--------------

- :s/foo/bar/g	        Change each 'foo' to 'bar' in the current line.
- :%s/foo/bar/g	        Change each 'foo' to 'bar' in all the lines.
- :5,12s/foo/bar/g	    Change each 'foo' to 'bar' for all lines from line 5 to line 12 (inclusive).

Window Splits
-------------
- :vsp :sp          Vertical/horizontal split
- :q                Close split
- ctrl-w j/k        Navigate windows
- ctrl-w o          Close all but current
- ctrl-w T          Break out into new tab view
- bd<N> bd bw       Delete the buffer (remove it from buffer list), wipeout the buffer (completely close it)
- :bufdo e          Reload all buffers
- :windo e          Reload all windows

Correcting Text
---------------
Operations like “c” (correct) and “d” (delete) have a number of operators that may be applied to them:
- t<char>           exclusive match: continue up to (but not including) the next <char> on this line
- f<char>           inclusive match: continue up to (and including) the next <char> on this line
- i<char>           exclusive inner match: apply to text bounded by <char>, where <char> is from a limited set of characters that come in pairs, like quotes, parentheses, brackets, etc.
- a<char>           inclusive inner match: same as above, except it includes <char> on both ends

Other
------
- :so %             Reload vimrc
- :cd               set working directory    
- %:p               full path to current file (echo expand('%:p'))
- %:h               full path without filename