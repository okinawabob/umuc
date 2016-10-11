---
title: Pancake.io MarkDown Syntax
header: Markdown Syntax Guide
---

## Summary
Markdown written documents should use filename extension _.md_ for example ***filename***.**md**
Markdown documents are processed by [Pancake.io](htt://pancake.io "A great Dropbox Web Server") web server to HTML web pages. 
Markdown language is described on web site:
https://bitbucket.org/tutorials/markdowndemo
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

## Block Level Elements

**To get this...**  | **Type this...**
:----------------------:|-------------------------------------
   A paragraph      | blank line or 2 spaces at end 
  <hr> | \-\-\-
  <h1>Largest Heading</h1> | # Largest Heading 
  <h2>X-Large Heading</h2> | ## X-Large Heading 
  <h3>Large Heading</h3> | ### Large Heading
  <h4>Normal Heading</h4> | ##### Normal Heading 
  <h5>Small Heading</h5> | ##### Small Heading 
  <h6>Smallest Heading</h6> | ###### Smallest Heading
 

## Inline Elements
**To get this...**  | **Type this...**
:------------------------:|-------------------------------------
  newline or line break    | blank line or 2 spaces at end 
  *Emphasized Text* | \*Emphasized Text\*
  **Strong Text** | \*\*Strong Text\*\* 
  ***Bold Italics Text*** | \*\*\*Bold Italics Text\*\*\*
  ~~Strike through~~> | \~\~Strike through\~\~
  <img src="bltDiamond.gif" alt="diamond"> |   \!\[alt text\](filename.ext)
  <img src="bltDiamond.gif" alt="diamond" title="titleText"> |   \!\[alt text\](filename.ext "titleText")
    

\[\!\[alt text\](me.jpg "Me")\](me.html) Hyperlink from an image
\[Go to freedom page\](Freedom.html)    Link Text to a File in same folder
\[Go to Temperature Convertor\](F2C.md "C to F") Title Text Included
\[Go Home\](../index.md "Go to home")  Go to home page in parent folder
\[Pancake\]\(http://pancake.io) is used to make a hyperlink to another web site 

## Nested List Elements

> Makes a blockquote indent

+ Bullet List item can be hierarchical by preceding with tab.
	+ Second level bullet list

1. Numbered List item can be hierarchical by preceding with tab
1. Line 2
1. Line 4
## Adding JavaScript
\<\!\-\-\-
title: Temperature Converter Program 
header: Celsius to Fahrenheit Converter
js: C2F.js
\-\-\-\>

```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```






