# FlexGrid
A 12 column grid system based off of flexbox.

## The Grid
An example of most of the elements can be found in the example (public_html/index.html)
All grid elements must be **preceded** by the col(umn) class and the col(umn) class must be a **child element** of a parent with a **container** or **row** class.

- one-twelfth
- one-sixth
- one-quarter
- one-third
- five-twelfths
- one-half
- seven-twelfths
- two-thirds
- three-quarters
- ten-twelfths (not in lowest terms to prevent math calculations)
- eleven-twelfths
- full

## Offsets
Offsets all you to space out your grid elements. For example, say you wanted a third of a column space between 2 of the three elements in the center:
```haml
%section.container
  %div.col.one-third
  %div.col.offset-one-third
  %div.col.one-third
```

## Ordering the Grid
The grid has a basic class **ord** appended by a **-(a number)**.
For example:
```haml
%section.container
  %div.col.full.ord-1
  %div.col.full.ord-2
```

## Manipulating Columns on Specific Breakpoints (media queries)
Right now there are two breakpoints based off of the max-device-width in the grid system:

- 1024px for most tablet devices / small screens
- 667px for most phone devices

Three have been sufficient with most websites.
Note that only **thirds**, **half**, **quarter**, and **full**  grid classes are available in these breakpoints. Ordering is excluded from this rule.

### Available Breakpoint Classes
There are two available breakpoint-prepended classes:

- tbt (tablet)
- phn (phone)

All available breakpoint classes are prepended like so:
```haml
%section.container
  %div.col.one-third.tbt-full
  %div.col.offset-one-third.tbt-full
  %div.col.one-third.tbt-full
```

### Landscape, Orientation, and Both
In order to apply a grid change only to landscape or portrait, you simply replace the **last character** in the **prefix** with the beginning character of the orientation:
```haml
#all orientations
%div.col.tbt-one-third

#portrait orientation
%div.col.tbp-one-third

#landscape orientation
%div.col.tbl-one-third
```

### Breakpoint Ordering
Ordering applies to the same rules as the landscape/portrait orientation. The standard ordering class is simply prefixed with the specified breakpoint:
```haml
%div.col.ord-1.tbt-ord-2
%div.col.ord-2.tbt-ord-1
```