# Working with the YCH TCT SPVB mockup

The file in this folder, YCH_TCT_SPVB_vNN.html, is a single self-contained
HTML mockup of about 1.4 MB, roughly 400,000 tokens. Reading it whole will
exhaust the context window and waste most of a session's budget.

## The one rule

Never read the whole file. Search it, then read only the lines you need.

  rg -n 'searchterm' YCH_TCT_SPVB_*.html      find line numbers
  sed -n '1200,1320p' YCH_TCT_SPVB_*.html     read one range
  wc -l YCH_TCT_SPVB_*.html                   how long it is

To build a map before searching blind, list the element ids with their line
numbers and read only the region you care about:

  rg -no 'id="[^"]+"' YCH_TCT_SPVB_*.html | head -200

## Never touch this block

Near the top there is a <style id="atom-fonts"> block holding about 600 KB of
base64 font data. It is two font families embedded so the mockup renders
correctly with no network. It contains nothing readable and nothing you will
ever need. Do not read it, print it, or include it in any output. If a search
returns a line from it, skip that line.

## This file is read-only for you

The mockup is owned by Pierre and released from a controlled pipeline. Do not
edit it, reformat it, or write a modified copy. Your output is the
specification, the analysis or the note, not a changed mockup. If something in
the mockup looks wrong, describe it with its line number and say so.

## Two conventions

Report anything you find by its on-screen label and its line number, so it can
be found again without re-reading the file.

No em dashes in anything you write for this project. Use a comma, a colon,
parentheses, or restructure the sentence.
