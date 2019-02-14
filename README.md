# Post-processing scripts for KJVParallelBible.org

A repo for storing some work files we used in converting the text files
involved in the KJVParallelBible.org project into JSON files that could be
imported into the Divi Page Builder.

While there may be further efficiencies that we could build into this process,
this is as far as we ever got with it.

The process represented in this repo is slightly adapted from Mark's original
process shown in the MOV file also archived in here.

## Process overview:

1. Use 'regex.sh' to replace Markdown bold syntax with appropriate \<span\> tags (depending on whether the file is a \*-CT.txt or \*-TR.txt file). This script handles all the files in the current directory. See notes below about the regexes used.
2. Remaining steps are carried out on a chapter-by-chapter basis:

	a. Open up the \*-TR.txt and \*-CT.txt files, and place them into the appropriate columns of 'STANDARD CHAPTER LAYOUT.xlsx' as described in the video.
	
	b. Copy the resulting cells into 'template.txt' as described in video.
	
	c. Update title and buttons in 'template.txt' as described in video.
	
	d. Run 'trim.sh' to compress file into valid JSON format.
	
	e. Create new Divi Builder page in Wordpress, import 'trimmed.json', and publish

## Find & Replace RegEx

The RegEx displayed in the video is resource-intensive and possibly
technically incorrect. A more efficient version is as follows.

Find: `\*\*([^*]*)\*\*`

Depending on context:

Replace: `\<span class=\\\"ctdifference\\\"\>\1\<\\\/span>`

Replace: `\<span class=\\\"trdifference\\\"\>\1\<\\\/span>`

