# Writing suggestions and resources for CIRL

This repository serves two goals:
* to provide technical writing suggestions,
* to provide shared writing resources.

The focus is on writing papers in computer graphics, computer vision, and computational photography. This includes writing papers for the following venues:
* ACM TOG, SIGGRAPH, and SIGGRAPH Asia (computer graphics),
* IEEE/CVF CVPR, ICCV, and ECCV (computer vision),
* IEEE ICCP, Optica (computational photography).

Most of the technical suggestions and resources are about writing papers in $\LaTeX$, with a focus towards the following templates:
* `acmart` (used by ACM TOG, SIGGRAPH, and SIGGRAPH Asia),
* `cvpr` (used by CVPR),
* `iccv` (used by ICCV, very similar but not identical to `cvpr`).

A lot of these notes are inspired (or directly plagiarized) from Wojciech Jarosz's [Common mistakes in technical writing
](https://cs.dartmouth.edu/wjarosz/writing.html).

**Table of Contents:**
+ [Technical suggestions](#technical-suggestions)
	+ [Common English](#common-english)
	+ [Math typesetting](#math-typesetting)
	+ [Figures](#figures)
	+ [Citations and references](#citations-and-references)
	+ [Other best practices](#other-best-practices)
+ [Resources](#resources)
+ [Reading](#reading)

## Technical suggestions

### Common English

1. **dashes**: English uses three different types of dashes: the hyphen (-, produced with one dash `-`), the en-dash (–, produced with two dashes `--`), and the em-dash (—, produced with three dashes `---`). These each have different grammatical uses. You should use hyphens for most inter-word dashes, for example: non-negligible." (See also next item on hyphenation.) You should use the en-dash to indicate an opposition or relationship, for example: `mass--energy equivalence` → "mass–energy equivalence;" or for year, number, or page ranges, for example: `as seen on pages 17--30` → "as seen in on pages 17–30." You should use en-dashes (surrounded by spaces) or em-dashes (without spaces) to denote a break in a sentence, or to set off parenthetical statements, for example: "A flock of sparrows – some of them juveniles – flew overhead," or "A flock of sparrows—some of them juveniles—flew overhead." You are welcome to pick either style, but you should use it consistently throughout a paper—I prefer to use em-dashes.

2. **hyphenation**: You should use hyphens for compound adjectives such as "bad-tempered" and "computer-aided". It can be hard to tell when a sequence of descriptive terms (adjectives or nouns) is a compound adjective and needs a hyphen. Here is a rule of thumb: without a hyphen, each descriptive term should make sense when combined *on its own* with the noun it is describing; if that is not the case, you need a hyphen. For example, in the sentence:
	> This material has a strong single-scattering component.

	we need a hyphen to form a compound adjective "single-scattering" describing "component." Without a hyphen, we would be talking about a "single component" and a "scattering component" (or rather, a "component" that is both "single" and "scattering"), which does not make sense. Sometimes the same set of words are hyphenated, and other times they are not, depending on context. For example, in the sentence:
	> This material has strong single scattering

	we do not need a hyphen, as "single" is the adjective describing "scattering." Additionally, adverbs (for example, "physically based rendering" or "very forward scattering") do not need a hyphen.

3. **Latin abbreviations**: You can (and generally should) avoid using Latin abbreviations, as most of them have English equivalents that tend to make text read more naturally—which should be unsurprising, given that the rest of the text is written in English. In computer science, currently there is one exception where by convention we still need to use Latin, and I highlight this exception below—if you find yourself writing for a law journal, things will be different. If you prefer to use Latin abbreviations, you should make sure you typeset and use them correctly. Also, you should *not* italicize common Latin abbreviations.
	1. **et al.**: This stands for "et alia," which means "and others" in English. It has no period after the "et", but does have a period after "al.". This is the exception I mentioned above: you should use this when referring to two or more *additional* authors after the first author of a paper you are citing. See also **citations** below. 

	2. **e.g.**: This stands for "exempli gratia," which means "for example" in English. It has periods after both "e" and "g", and additionally requires commas both before and after. You can use it to start a list of examples, for example: "This technique has applications in many areas, e.g., medical imaging, remote sensing, and material science." You can just say "for example" instead.

	3. **i.e.**: This stands for "id est," which means "that is" in English. It has periods after both "i" and "e", and additionally requires commas both before and after. You can use it to explain the immediately preceding statement, for example: "We select a point by importance sampling, i.e., sampling proportionally to the contribution term." You can just say "that is" instead. It is common to confuse "i.e." and "e.g.", but as the above two examples should hopefully show, the two are *not* interchangeable.

	4. **etc.**: This stands for "et cetera," which means "and the rest" in English. Thus it has a period only after "c". You can use it to indicate an incomplete list, for example: "This technique has applications in medical imaging, remote sensing, etc." You can just say "and so on" instead. Importantly, do not add "etc." at the end of a list of examples starting with "e.g.".

	5. **cf.**: This stands for "confer," which means "compare" in English. It has a period only after "f." . You can use it to compare the immediately preceding statement with another statement in the same work or more commonly, a statement in another work. Just do not use this one.

4. **capitalization**: You should capitalize *only* proper nouns, that is, names of (or things named after) people, places, organizations, and so on. You should not capitalize any other word, unless it is starting a sentence. For example, you should not capitalize "computer graphics," "computer vision," or "computer science." You should not capitalize "neural radiance fields" or "bidirectional distribution radiance function," even though you should capitalize the corresponding initialisms "NeRF" and "BRDF". You should write "Gaussian distribution" (because "Gauss" is the name of a person, and thus a proper noun) and "exponential distribution" (because "exponential" is not a proper noun). A fun example is the capitalization of "Markov chain Monte Carlo" (MCMC), where you should capitalize the proper nouns "Markov," "Monte," and "Carlo", but you should not capitalize "chain".

5. **few/a few/quite a few**: Including or omitting the "a" before "few" can completely change the meaning of a sentence. Compare "Tom has a few oranges he is willing to share." with "Tom has few oranges he is willing to share." The first suggests that Tom is willing to share some oranges, the second suggests that Tom does not have many oranges to share. "A few" really means "some", and emphasizes the *existence* of some (small) quantity, while "few" emphasizes that the quantity is *small*. Another way to think of this is that "few" = "only a few", so the latter is actually saying: "Tom has only a few oranges he is willing to share." Additionally, "quite a few" actually means "many" or "a surprisingly large number".

6. **cannot/can not, maybe/may be**: Both "can not" and "cannot" can be correct, but their use is different. You would use "can not" when the "not" does not belong to the "can" but rather to the words following, such as the construction "not only": "He can not only sing, but also dance." Likewise "maybe" and "may be" are both valid, but not interchangeable. "Maybe" means perhaps whereas "may be" indicates a possibility, for example: "He may be smart, or maybe he is just lucky."

7. **only, also, just**: The placement of these words in a sentence matters. You should place them as close as possible to the element in the sentence they are quantifying. Consider the following example sentence (taken from real reviews):
	> The paper brings perspectives which ultimately only benefit the vision community.

	This is a positive comment as it says that, of all the ways the paper could impact the vision community, ultimately it does so in a beneficial way. Compare with this slightly different sentence:
	> The paper brings perspectives which ultimately benefit only the vision community.

	This is a negative comment as it says that the paper benefits the vision community, but does not benefit any other community (suggesting it is of limited value). Moving "only" changes the sentence from a positive into a negative comment!

8. **both, either-or, colons**: When you use these words to fork the narration, you should make sure you place as much as possible of the shared sentence content before the fork. For example, you should say:
	> This principle applies to research in both academia and industry.

	instead of:
	> This principle applies to research both in academia and in industry.

	This is even worse:
	> This principle applies to both research in academia and research in industry.

	And this is worse yet:
	> This principle applies to both research in academia and industry.

	The second and third sentences are unnecessarily verbose, but semantically equivalent to the first sentence. The fourth sentence says something different from the other three—the principle applies to research in academia, and it also applies to industry in general (even outside research).

9. **demonstrative pronouns**: You should follow pronouns such as "this," "these," "that," and "those" with a noun, and not use them on their own. For example, you should say:
	> The paper describes the ray tracing and rasterization algorithms. These algorithms are fundamental in rendering.

	instead of:
	> The paper describes the ray tracing and rasterization algorithms. These are fundamental in rendering.

	Using bare demonstrative pronouns results in ambiguities. You should also make sure that you have already introduced the noun you follow the demonstrative pronouns with in the preceding text, or at the very least that the noun can be easily deduced. Compare, for example, the previous sentences with:
	> The paper describes ray tracing and rasterization. These algorithms are fundamental in rendering.

	The last sentence can be confusing to someone that does not know that ray tracing and rasterization are algorithms.

10. **describe notation**: When you use notation in a sentence, you should include some short term explaining what the notation is, even if you have already defined it earlier in the document. For example, you should say:
	> Our goal is to compute the radiance $L$ at point $x$ and direction $\omega$.

	instead of:
	> Our goal is to compute $L$ at $x$ and $\omega$.

	This practice makes it a lot easier for readers to follow your discussion.

11. **do not use diaereses**: Unless you are writing for The New Yorker, you generally do *not* need to use diaereses for words such as "naïve" (just write "naive"). The only exception is that you should use diaereses in names, for example "Zoë". If you insist on using a diaeresis on "naïve", then you should use diaereses consistently also in all sorts of other words, for example "coöperate" or "reëlect".

12. **use active voice**: You should prefer to write in active voice. For example, you should say:
	> Gkioulekas et al. [2023] introduced this algorithm.

	instead of:
	> This algorithm was introduced by Gkioulekas et al. [2023].

	For another example, you should say:
	> We define $L$ as the radiance.

	instead of:
	> $L$ is defined as the radiance.

	Personally, I find it a fun creative exercise to try to reduce use of passive voice as much as possible, and it always results in much more readable text.

13. **do not instruct the reader**: Instead of writing "See Section 3," you should write "We refer to Section 3." Instead of writing "Note that this is a tight bound," you should write "We note that this is a tight bound," or better yet "This is a tight bound" (you can almost always skip the words "(we) note that").

14. **use consistent nouns**: When you refer to some term several times throughout a sentence or paragraph, you should use consistent nouns. Consider this text:
	> We compare with two baselines, ray tracing and rasterization. Compared to these techniques, our algorithm shows tenfold performance improvement. Our method is also easier to implement.

	You should edit it to use consistent nouns throughout, for example:
	> We compare with two baseline algorithms, ray tracing and rasterization. Compared to these algorithms, ours shows tenfold performance improvement. Our algorithm is also easier to implement.

	The edited text not only improves clarity, but also is easier to read because it introduces fewer terms.

15. **while, since**: Unless you want to provide time information—for example "While Yannis was writing, I was running experiments," and "I have been working on this project since I joined CMU"—you should replace these words with "even though" and "as" to help reduce ambiguities. For example, instead of:
	> While it is common practice, this approximation results in bias.

	you should write:
	> Even though it is common practice, this approximation results in bias.

	Likewise, instead of:
	> We can ignore the third-order term $d^3$, since we assume the distance $d$ to be small.

	you should write:
	> We can ignore the third-order term $d^3$, as we assume the distance $x$ to be small.

16. **intialisms**: You should define all initialisms the first time you use them in your document, by fully typing out what they stand for. For example, you should say "the bidirectional reflection distribution function (BRDF)" the first time you use "BRDF." I recommend against using initialisms in the abstract, which is meant to be a succinct description of your work and thus should not introduce very specialized terminology. If you do need to use an initialism in the abstract, you should define it in its first appearance, and then define it once more the first time it appears in the main text. This is because often the abstract and main text are shown separately from each other (for example, on web readers).

### Math typesetting

1. **basics quick-reference**: [This MathJax tutorial](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference) is a great quick reference for your most common $\LaTeX$ math typesetting needs.

2. **AMSmath**: You should read the [AMSmath documentation](ftp://ftp.ams.org/ams/doc/amsmath/amsldoc.pdf) and the [Short Math Guide](ftp://ftp.ams.org/pub/tex/doc/amsmath/short-math-guide.pdf) to get started. I very rarely use the standard `equation` environments anymore. My default environment is `align`, which basically acts as a drop-in superset replacement for `equation`. You should learn to use the `cases` environment.

3. **notation and macros**: You should define macros (with descriptive names) for all your repeatedly-used notation. (See project file structure below.) If you do this consistently, it makes it much easier to experiment with and perfect your notation while you are working on the paper. By contrast, changing notation by using search and replace or manually hunting down each instance both are very tedious and error prone. Additionally, using macros makes it easy to reuse notation across multiple papers on the same general topic—which itself is great practice, as it makes it easier for others to read your papers.

4. **number all equations**: Your reviewers and your future self will appreciate it. It is much easier to discuss details of the paper when you can say, for example, "The x we solve for in Equation 3 is the same as the x that appears on the right-hand-side of Equation 13," instead of: "The x we solve in the first unnumbered equation of the second column of page 4 is the same as x that appears on the right-hand-side of the unnumbered equation between Equations 12 and 13." You will run into this issue not only during review, but also many years down the road when someone emails you asking for clarification about some detail in a paper of yours.

5. **equations are parts of sentences**: All equations (displayed or inline) should grammatically and syntactically be part of a sentence. This means that you will typically need some punctuation before a displayed equation (a comma or colon, depending on context), and possibly punctuation after (a period or comma) if the surrounding sentence continues. As a simple rule, never forget a period after an equation, and never create a dangling displayed equation by placing a period directly beforehand. You can often figure out what punctuation (if any) you need around a displayed equation by reading the equation out loud in the context of the entire surrounding sentence.

6. **italic and upright font in equations**: Sequences of letters intended as words or abbreviations will not be typeset properly inside math environments. This is because $\LaTeX$ interprets each letter in a math environment as a separate mathematical variable, typesetting it appropriately (with a different font, and, more importantly, with more spacing between each symbol). There are several common situations to consider:
	1. **multi-letter variables**: In most cases, you should avoid using multi-letter variable names, but if you must, and it will be clear within the context, you should enclose your multi-letter variables with `\textit`.

	2. **custom functions**: $\LaTeX$ defines several standard math functions or operators (for example,  `\sin`, `\cos`, `\exp`, `\log`) which are typeset and spaced differently than variables. If you want to define a custom, multi-letter function `\xxx` that is typeset in the same way as `\sin`, you should do so with: `\DeclareMathOperator{\xxx}{xxx}`. There are other variants and options, check the AMSmath [documentation](ftp://ftp.ams.org/ams/doc/amsmath/amsldoc.pdf).

	3. **descriptive text**: If you want to interject a word or phrase into a displayed equation enclose it with `\text`, for example: use
		~~~
		$$f_i \text{ is monotonic,} \quad i = 1,\dots,c+1$$
		~~~
		which produces: $f_i \text{ is monotonic,} \quad i = 1,\dots,c+1$, as opposed to
		~~~
		$$f_i is monotonic, \quad i = 1,\dots,c+1$$
		~~~
		which produces: $f_i is monotonic, \quad i = 1,\dots,c+1$. This will use the document's standard text font. Likewise, use
		~~~
		$$\underbrace{f(x) g(x)}_{\text{throughput}}$$
		~~~
		which produces: $\underbrace{f(x) g(x)}_{\text{throughput}}$, as opposed to
		~~~
		$$\underbrace{f(x) g(x)}_{throughput}$$
		~~~
		which produces: $\underbrace{f(x) g(x)}_{throughput}$.

	4. **abbreviations**: Sometimes you want to include a word or abbreviation, which should be part of a mathematical symbol (for example in a subscript or superscript), but should be typeset with standard word spacing. You could use the `\text` command as above, but if you want to use and control the math font, you can use `\mathit` (math italics) or `\mathrm` (math roman) instead. For example, you should use `L_\mathrm{max}` to produce $L_\mathrm{max}$, and not `L_{max}` which produces $L_{max}$. This rule applies also to single-letter abbreviations. For example, for incident radiance you should use `L_\mathrm{i}` which produces $L_\mathrm{i}$, and not `L_i` which produces $L_i$. By contrast, if you want to use a subscript for the radiance $L$ associated with a *variable* index $i$, then you should use `L_i` which produces $L_i$, so that math mode correctly typesets the variable name in italics.

	5. **other cases**: You should use `\mathrm` for notation for dimensionless numbers (for example, the Reynolds number `\mathrm{Re}`) and infinitesimals (`\mathrm{d} x`).

7. **bold font in equations**: Unfortunately, there is no perfect solution for typesetting bold font in equations (for example, to denote vectors). The `\boldsymbol` command typically creates bold characters by rendering multiple vertically offset copies of their unbolded counterparts. The `\mathbf` command renders proper bold characters, but removes italics, which can break notation semantics (for example, that variables should be in italics). The `\bm` command from the [bm](https://ctan.org/pkg/bm) package tries to fetch any allocated bold fonts and, if none exist, defaults to the same behavior as `\boldsymbol`. My preference is to use `\bm`, but it is imperfect. If you load the `bm` package, you should load it after any other package that loads fonts for it to work properly—and if you do that, it will override the command `\boldsymbol` to automatically use `\bm`.

8. **negative numbers**: Text mode interprets the "`-`" as a hyphen, which does not look right when typesetting negative numbers. You should typeset negative numbers using math mode, for example: `$-1$`, instead of `-1` or `-$1$`.

9. **triple dots**: You should use `\dots` (renders $\dots$) to typeset triple dots. You do not need to worry about variants such as `\ldots`, as `\dots` automatically figures out the correct placement of the dots.

10. **fractions**: Sometimes, you may get better results using the commands `\nicefrac` and `\sfrac`, from the packages `nicefrac` and `xfrac` respectively, instead of the basic command `\frac`. For example, when I type fractions in inline math mode, I almost always use `\nicefrac`. As another example, when I type a fraction whose numerator and denominator are themselves fractions, I use `\frac` for the main fraction, and `\nicefrac` for its numerator and denominator. You should *not* use just `/` for fractions, especially not in inline math mode, as it can create ambiguities when there are multiple terms in the numerator or denominator. 

11. **equality versus equivalence versus assignment**: You should know the difference between the symbols `=`, `\equiv` (renders $\equiv$) , and `\coloneq` (renders $\coloneq$) and use them consistently. Conventions on how to use them differ. Within computer graphics, I suggest the following: You should use `\equiv` whenever you define something, which includes when you introduce notation. You should use `\coloneq` for assignment, for example if you are describing the settings you choose (or assume) in some equation or algorithm in different use cases. You should use `=` everywhere else.

12. **angle brackets**: You should use `\langle` and `\rangle`, instead of the comparison operators `<` and `>`, when you want to typeset angle brackets.

13. **big delimiters**: You should use properly sized delimiter pairs. Delimiters include parentheses, vertical bars, and square, curly, and angled brackets. You can have $\LaTeX$ choose the size of the delimiters automatically by using the `\left` and `\right` paired commands, for example: `\left(\frac{1}{2}\right)`, instead of `(\frac{1}{2})`. These must always be used in pairs and they do not work across line breaks. If your parenthetical block spans multiple lines, you must include an invisible `\right.` or `\left.` counterpart before the line break. Sometimes the automatic sizing is not ideal, in which case you can fine-tune with manual sizes: `\bigl`, `\Bigl`, `\biggl`, `\Biggl` (and the r counterparts). As these are static sizes, you do not need to take special care of multi-line equations. The [mathdefs](#resources) package has a set of commands for delimiters that automatically take care of these issues and you can use instead of standard delimiters.

14. **units**: You should learn how to use the `siunitx` package to correctly typeset units. You can read the [SIUnitx user manual](http://mirrors.ctan.org/macros/$\LaTeX$/contrib/siunitx/siunitx.pdf) to get started. In particular, units should be typeset in upright font, and with a space between them and the number they are quantifying. Using the command `\qty` from `siunitx` takes care of this and many other unit formatting issues (for example, correct typsetting of micro-modifiers).

15. **definitions**: You should define any variables, functions, or other custom notation the first time you use them in your document. A definition should use both notation to precisely indicate the type of the object you are defining, and words to describe what it is in English. For example, if you are defining a three-dimensional point, you could say: "The point $\boldsymbol{x} \in \mathbb{R}^3$ is the location of..." If you are defining a set, you could say: "The set $\Omega \subset \mathbb{R}^3$ is the domain..." And if you are defining a function, you could say: "The function $f: \mathbb{R}^3 \to \mathbb{R}_{\ge 0}$ is the map..." All three definitions use the notation $\in$ (produced with `\in`), $\subset$ (produced with `\subset`), or $: \cdot \to \cdot$ (produced with `: \cdot \to \cdot`), as appropriate, to indicate the exact type of the object they describe.

### Figures

1. **fonts**: You should avoid figures with rasterized text, which will inevitably look aliased and may even be impossible to read. Instead, you should use vector figures where all text is typeset using appropriate fonts. You can create such figures using either `TikZ` (for example, with the [pgf](https://www.ctan.org/pkg/pgf) package), or using software such as Inkscape, Microsoft PowerPoint, or Adobe Illustrator.
	1. **font type and size**: The type and size of the font in your figures should match those in the captions of your document. In the `acmart` template, captions use the Linux Biolinum T font at 8pt size. In the `cvpr` and `iccv` templates, captions use the Nimbus Roman No9 L font (which is nearly identical to the Times New Roman font) at 9pt size. In other templates, you can use the command `\expandafter\string\the\font` to find the font type and size.

	2. **figure and font sizing**: If you load figures with a `[width=...]` option, it will be impossible to exactly match the caption font size. Instead, in the software you use to create figures, you should set the canvas width to match the maximum width of single-column (`\linewidth`) and double-column (`\textwidth`) figures in your document, then set the figure's font size to match the caption font size as above. In the `acmart` template, `\linewidth` is 243.14749pt and `\textwidth` is 510.295pt. In the `cvpr` and `iccv` templates, `\linewidth` is 237.13594pt and `\textwidth` is 496.85625pt. In other templates, you can use the commands `\the\textwidth` and `\the\linewidth` to find these numbers.

2. **placement**: With the exception of wrap figures (see below), you should place figures at either the top or the bottom of a page. I would suggest not having figures at both the top and the bottom of the same column, sandwiching some text between them. Additionally, you should avoid pages that have predominantly figures and only a small amount of text. In both cases, a reader may completely miss the text. If there is very little room for text, it is better to create a page with only figures.

	Additionally, you should generally try to place figures in the same page as, or at the very least near, the text that describes them. It can be difficult to predict where exactly a figure will end up while you are still writing your document. Once you finish writing, I recommend spending some time moving figures around to optimize their placement relative to the text that describes them.

3. **captions**: Every figure that is not a wrap figure (see below) should have a caption, which you can insert with the command `\caption`. I suggest making each figure together with its caption as self-contained as possible. This practice helps readers that, as they skim through a paper, read only its figures without referencing the main text.

4. **descriptions**: Every figure (including wrap figures) should have a description, which you can insert with the command `\description`. The description is different from the caption, and it is the information screen readers will use to describe the figure to readers that cannot view the image.

5. **wrap figures**: As the name suggests, these are figures that allow text to wrap around them, instead of being distinct floating elements. You can create them with the command `\wrapfig`. You should use wrap figures for small and simple visualizations that help explain the text immediately adjacent to them. Captions are optional for wrap figures.

	It can be difficult to predict the exact placement of wrap figures relative to the text that wraps around them. I recommend placing each wrap figure in its own command as in this example:
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ tex linenumbers
	\newcommand{\WrapFigureExample}{%
		\setlength{\columnsep}{1em}
		\setlength{\intextsep}{0em}
		\begin{wrapfigure}[numberoflines]{(r)ight/(l)eft}{wrapwidth}
			\centering
			\includegraphics{YourWrapFigure.pdf}
		\end{wrapfigure}
	}
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	You can place this definition near where you plan to use the wrap figure, and you will need to enter your preferred values for the fields `numberoflines`, `r` or `l`, and `wrapwidth`. Then you can easily move the entire figure around the text by using the command `\WrapFigureExample{}`.

### Citations and references

1. **citations as nouns**: You should not use parenthetical citations as nouns. For example, you should not write: "As explained by [Gkioulekas et al. 2023]"; instead write: "As explained in prior work [Gkioulekas et al. 2023]," or "As explained by Gkioulekas et al. [2023]", or better yet "As Gkioulekas et al. [2023] explain"  (see `\citet` below and active voice above). As a general rule of thumb, **if you remove all parenthetical citations from the paper, you should still have complete, grammatically correct sentences**. Using parenthetical citations as nouns looks particularly obnoxious and obvious when you have numerical or superscript citations such as "As explained by [1]" or "As explained by<sup>1</sup>"—you should not write either.

2. **citing with $\LaTeX$**:
	1. **spacing**: Use a non-breaking space `\~` between a citation and the preceding word in the sentence:
		~~~
		Path tracing~\cite{Kajiya:86} is...
		~~~

	2. **citet, citep, citeauthor, citeyear**: The [natbib](http://www.ctan.org/pkg/natbib) package provides different cite commands for textual (`\citet{citekey}`) and parenthetical (`\citep{citekey}`) citations, as well as the ability to list just the author (`\citeauthor{citekey}`) or just the year (`\citeyear{citekey}`) of the citation. You should learn and use these variants. They allow you to, for instance, use the author name as a noun in the sentence, but avoid redundancy with the information in the parenthetical citation. For example, instead of "As explained by Gkioulekas et al. [Gkioulekas et al. 2023]" or "As explained by [Gkioulekas et al. 2023]", you can write "As explained by Gkioulekas et al. [2023]" with the syntax
		~~~
		As explained by \citet{Gkioulekas:2023}.
		~~~
		This has the additional advantage of automatically pulling data from your bibliography file, and automatically figuring out whether to use "et al." for more than two authors.

	3. **multiple citations**: You should place a sequence of multiple citations into one `\cite{key1,key2}` command with cite-keys separated by commas, instead of separately as `\cite{key1}\cite{key2}`.

3. **bibliography**: Below are a few items to be careful about when creating your bibliography file.

	1. **duplicate references**: It is very easy to accidentally cite the same paper with two (or more) different bib entries, which will result in identical references that $\LaTeX$ has no way of detecting. Always check for duplicate entries in your references.

	2. **full author names**: You should check that all of your references include full first and last names for authors. Until recently (around mid 2010s), a lot of common bibliography formats (like IEEE) printed only first name initials in references. As a result, there are many bib entries lying around that only include initials. You should edit them to include full names.

	3. **correct online bib entries before use**: Most digital libraries are notoriously bad at providing correct bibtex information. Always check when you cut-and-paste any online entry into your bib file. Common errors include:

		1. page numbers should be separated by an en-dash, for example:
			~~~
			pages = {195--200},
			~~~
			and not
			~~~
			pages = {195-200},
			~~~

		2. DOI entries should include just the number, and not a full URL, for example:
			~~~
			doi = {10.1145/1964179.1964185},
			~~~
			and not
			~~~
			doi = {http://doi.acm.org/10.1145/1964179.1964185},
			~~~

		3. incorrect title and venue capitalization.

	4. **capitalization in reference titles**: You should not force capitalization by enclosing all your bib entry titles in double braces: `{{My Title}}`. *It is the bib style's job to decide on the capitalization of titles, not yours*, as this varies between publication venues. However, you do need to inform BibTeX when certain words must be capitalized, for instance if they are acronyms or proper names. Do this by enclosing just the capitalized letters in braces:
		~~~
		title = "Fast {GPU} ray tracing of dynamic meshes using geometry images",
		~~~
		To capitalize, wrap the entire word:
		~~~
		title = "Exact evaluation of {Catmull}-{Clark} subdivision surfaces at arbitrary parameter values",
		~~~
		instead of just the first letter `{C}atmull-{C}lark` as the latter can cause kerning issues.

		See the [TeX FAQ](http://www.tex.ac.uk/cgi-bin/texfaq2html?label=capbibtex).

	5. **multiple author/editor names**: Author names should be separated by "and", and not by a comma ",". Otherwise BibTeX will think they are all part of the same author, with a very long name, for example: write
		~~~
		author = {John Doe and Jack Doe and William Doe and Averell Doe}
		~~~
		and not
		~~~
		author = {John Doe, Jack Doe, William Doe and Averell Doe}
		~~~
		This also applies to editor names.

	6. **consistency**: You should be consistent about how you format the information across different bibliographic entries. For example, do not write "Proceedings of EGSR" in some entries, and "Proceedings of the 18th Eurographics Symposium on Rendering" in some others. On the other hand, many conferences have complex publication histories and different time periods therefore should be cited differently. Learn the ones important to you (see below).

	7. **know the publication history**: Many conferences have gone through a complex evolution of their publication history. For instance, EGSR was sometimes published as a book called "Rendering Techniques", but in 2008 it became a special issue of the Computer Graphics Forum journal. The proper way to cite a paper from EGSR therefore depends on the year. The same applies to SIGGRAPH, Eurographics, CVPR and ICCV. Nicolas Holzschuch summarizes the history of [SIGGRAPH](http://maverick.inria.fr/Membres/Nicolas.Holzschuch/siggraph.html), [EG](http://maverick.inria.fr/Membres/Nicolas.Holzschuch/eg.html), and [EGSR](http://maverick.inria.fr/Membres/Nicolas.Holzschuch/egsr.html) well.

### Other best practices

1. **PDF metadata**: You should use the [hyperref](https://ctan.org/pkg/hyperref) to set PDF metadata such as title, authors, topic, and keywords *for camera-ready PDF files*. (Never do this for PDF files under review, to avoid violating anonymity rules.) The latest version of the `acmart` template does that automatically. For the `cvpr` and `iccv` templates, you can set this metadata as follows:
	~~~
	\usepackage[pdfauthor={Ioannis Gkioulekas},pdftitle={Some title},pdfkeywords={Some keywords},pdfdisplaydoctitle]{hyperref}
	~~~
	These are just the options to produce PDF metadata, you should include them alongside any other options you need for `hyperref` (for example, clickable hyperlinked references).

2. **do not commit PDF and generated files in git**: There are many files that are generated during building either $\LaTeX$ or code. Do not commit these files to the repository as it will cause conflicts for your collaborators. This includes the generated PDF file! Other common generated files in $\LaTeX$ include: `.aux, .bbl, .blg, .fdb_$\LaTeX$mk, .fls, .log, .out, .synctex.gz` files. See below about using a `.gitignore` file.

3. **project file structure**: You should have a separate `git` repository for each paper. Within the repository, I recommend structuring your files as follows.

	1. **root, macro, and bib files:** Every paper should have these files. You should pick a short identifier for the paper (for example, "fermat" for the "Fermat paths"), then use it to name these three files with appropriate extensions (for example, `fermat.tex` for the root file, `fermat.sty` for the macro file, and `fermat.bib` for the bib file). The root file should include the preamble, title, your sections, and bibliography commands. The macro file should include any additional packages you want to include, and any macros you use for this paper (including macros for notation and commenting, see below). The bib file should include all bib entries. 

	2. **figures subfolder**: Do not pollute your root repository directory with all your graphics and figures. Instead, include them in a separate `figures` or similar subfolder.

	3. **Makefile**: You should include a Makefile that someone can use to build the paper outside of an editor. This repository includes a [Makefile](#resources) template.

	4. **.gitignore**: You should include a `.gitignore` file so that `git` automatically excludes files that do not need to be checked into the repository, such as files generated by $\LaTeX$. This repository includes a [.gitignore](#resources) template.

4. **caption placement**: The caption for a figure should appear below it; for a table, above it. Just place the `\caption` command above or below the content.

5. **cross-references**: You will often need to reference different parts of a paper within the paper itself, such as sections, figures, tables, algorithms, list items, and so on.
	1. **labeling scheme**: You should choose a scheme for the labels of various types of references and stick to it consistently. I suggest using a 3-letter prefix: `sec:section-name`, `fig:figure-name`, `eqn:equation-name`, `tab:table-name`, `alg:algorithm-name`, `enu:item-name`, `the:theorem-name`, and so on.

	2. **consistent style**: You should consistently for all references either abbreviate them (for example, "Fig. 10", "Eq. (2)", "Sec. 3.2", "Alg. 3", "Tab. 4," and so on) or write them out in full (correspondingly "Figure 10", "Equation (2)", "Section 3.2", "Algorithm 3", "Table 4," and so on). Sometimes the paper template dictates the choice, for example: if it automatically uses the short form "Fig. 10" at the start of captions, the consistent choice would be to use abbreviated references everywhere. One exception to the consistency rule is at the beginning of sentences, where many journals advise using full references, even if you use abbreviated references everywhere else. My preference is to write out all references in full whenever I can. 

	3. **capitalization**: You should capitalize all references. But you should *not* capitalize the words "section", "equation", "algorithm", and so on when you use them outside of references. For example, you should capitalize when you say "We prove this in Section 3," but not when you say "We prove this in the next section."

	4. **subsections**: You do not need to indicate "Subsection 3.2" and similar in references, just use "Section 3.2".

	5. **eqref**: You should use `\eqref` to reference equations, and `\ref` for everything else. Using `\eqref` ensures that your references match the labeling style `amsmath` uses to number equations.

	6. **intelligent cross-referencing**: With the [cleveref](https://ctan.org/pkg/cleveref?lang=en) package you can use a single `\cref{label}` command (or `\Cref{label}` at the beginning of sentences) for any type of cross-reference, and it will automatically produce "Equation (3)" or "Section 4.1" depending on whether `label` refers to an equation, or section, and so on. Lastly, you can specify in a single place whether to use abbreviated or full references, and have the change consistently applied to your entire document.

6. **inline lists**: If you want to create an inline list, you should enable the `inline` option of the [enumitem](https://ctan.org/pkg/enumitem?lang=en) package. You can then create a list using the `enumerate*` environment. For example, 
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ tex linenumbers
	Compared to prior work, this algorithm has two advantages:
	%
	\begin{enumerate*}
		\item It improves performance.
		\item It is easier to implement.
	\end{enumerate*}
	%
	We explain these advantages below.
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	produces `Compared to prior work, this algorithm has two advantages: \begin{enumerate*} \item It improves performance. \item It is easier to implement. \end{enumerate*} We explain these advantages below.` Compared to manually typing out the list, this practice helps enforce consistent listing style throughout the document, allows assigning labels and cross-referencing list items, and makes it easier to switch between displayed and inline lists (for example, during a shortening pass). 

7. **avoid hard wrapping**: Everyone has differently sized displays and windows, do not force your size on your collaborators. Use soft wrapping. It is a nightmare to visually parse the $\LaTeX$ source for a file with mixed wrapping. Some people find it useful to write each sentence on a separate line to make diffs and merges easier. This is acceptable, but should not really be necessary with a good diff tool.

8. **inline commenting**: You should define (in the macro file) some macros for inline commenting and communication between co-authors. For example, you can define a macro named after each author's initials (say, `\igkiou{Yannis' comment}`) for adding comments into the text. These comments can be simple colored text, ideally with a different color for each author. Using such macros makes it easy to turn all commenting off, for example for the final paper submissions (so you do not accidentally submit for review with a stray comment still lingering).

9. **acknowledgments**: You should keep track of people that helped you during the course of your research. Did someone (not involved in the project) help you make a figure, or did anyone provide narraration for the supplemental video? Did someone have a discussion with you that helped you overcome some hurdle? This support network is important to acknowledge, but easy to overlook when submitting the final version. I recommend you insert comments directly into your $\LaTeX$ file in the acknowledgments section, so when you get to writing this section you have all the info there.

	Additionally, the acknowledgments must include all sources of funding. This is *incredibly* important for reporting. You should ask all your co-authors for funding acknowledgments to include before submitting the final version of a paper.

10. **paragraph titles**: The `acmart`, `cvpr`, and `iccv` templates include the command `\paragraph` for paragraph titles. You should use this command instead of defining your own (for example, using custom `\boldstart` commands). If you absolutely need to change the formatting of paragraph headers (for example, to reduce vertical space for shortening), you should do so by redefining the `\paragraph` commands. This makes it easier to switch back and forth between formatting choices.

11. **spaces**: $\LaTeX$ has several rules to automatically adjust the size of spaces in different contexts. For example, it creates a longer space after a period "." unless it follows a capital letter. If you have a period mid-sentence (like in "et al.") you need to instruct $\LaTeX$ to use a regular space: `et al.\ `. If an uppercase letter ends a sentence, you need to use a `\@` before the period.

12. **build check**: Before committing any changes to git, you should always check that the project builds *outside of your editor*, for example, from the command line using a standard `texlive` installation. (You can use the included `Makefile` to check for this, see above.) Doing so is important because many editors (especially Overleaf) automatically "fix" some issues during compilation that would normally result in a compilation warning or failure. Forgetting to check that your project builds not only makes it harder for your co-authors (who may be working on a different editor, and thus unable to compile the project) to work, but also can disguise serious problems with your $\LaTeX$ code that you need to fix.

13. **sections and sub-sections**: For a journal paper, it is very rare that you need to go past subsections (subsubsections and beyond) in your text hierarchy. Even with subsections, you should use them sparingly for major parts of a section. In all other cases, you are better off using the `paragraph` command to introduce a paragraph title.

14. **empty sections**: You should avoid "empty" sections, which most typically happen when you follow a `\section` immediately with a `\subsection`. You should either eliminate the `\subsection`, or add a short paragraph explaining what this section is about.

15. **title capitalization**: You should be consistent in terms of title capitalization—always use either *title case* (all but minor words are capitalized) or *sentence case* (only the first word and proper nouns are capitalized). This includes *all* titles: the paper title, (sub-)section titles, figure titles, paragraph titles, and so on. I recommend using sentence case, because it removes ambiguity about what qualifies as a "minor" word (should I capitalize "of"? what about "-based"?).

16. **wrap block environments with comments**: By block environments I mean displayed equations, footnotes, wrap figures, itemized and enumerated lists, and so on. If you include an empty line before or after a displayed equation you will introduce a paragraph break, which is often unintended. Depending on the style, an empty line will also sometimes indent the subsequent text. Do not use `\noindent` to fix this issue! Instead, avoid the blank lines in the source that cause the paragraph breaks. To provide visual separation for the displayed equations in the tex file, I suggest that you prefix and postfix each displayed equation with commented blank lines:
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ tex linenumbers
	The equation
	%
	\begin{align}
	y &= x^2,
	\end{align}
	%
	is simple to solve.
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	I suggest that you do the same for other block environments, such as footnotes, wrap figures, and lists. For footnotes, you need to be careful to avoid introducing extra space between the text and the footnote superscript. For example, you can use:
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ tex linenumbers
	This theorem%
	%
	\footnote{We include the proof in the supplement.}
	%
	is our main technical result.
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	Notice the extra `%` after "theorem."

17. **figure sizing**: Whenever possible, you should avoid excess white space on the sides of your figures. You can size your graphics in $\LaTeX$ using the defined lengths `\textwidth` (for double-column figures) or `\columnwidth` (for single-column).

18. **line numbering**: Many venues provide line numbers in the review version of their $\LaTeX$ style. You should not forget to enable this feature in your paper submissions! It is immensely frustrating as a reviewer to not be able to refer to specific locations of the paper by line number. Forgetting to enable line numbering may also result in desk rejection.

19. **update your template files**: The `acmart`, `cvpr`, `iccv`, and associated bibliography template files keep changing. Make sure to regularly download and use the latest versions of the template files.

20. **compress your PDF file**: Before submitting your final document, you should reduce the size of your PDF file using lossless compression. Doing so is especially important for papers that contain a lot of figures, which can easily exceed hundreds of MB in size: files that large are impractical to download, and may be disallowed on many paper submission systems. There are many ways to compress a PDF file, two common ones are to use ghostscript (`gs`) from the command line, or the "compression" option in Adobe Acrobat. 

## Resources

This repository includes a few files that should be useful for all papers you write within the CIRL group, and potentially more broadly.

1. **`mathdefs` package**: This package provides resources for typesetting math in $\LaTeX$. You should be able to do everything you read above regarding typesetting math by including just this package. There are two types of contents:
	1. **packages**: `mathdefs` includes the most commonly used math packages (a complete and consistent subset of the AMS math packages), along with packages that provide useful utilities such as unit typesetting (`siunitx`), fractions (`nicefrac` and `xfrac`), and others.
	2. **macros**: `mathdefs` provides macros for delimiters, common functions (examples: absolute value, correlation), common sets (examples: real numbers, sphere), common distributions (examples: Gaussian, Poisson), and others.

2. **`cirl` package**: This package provides all of the packages you read about above, as well as several other useful ones. It is designed so that you should not need to include *any* other package when writing papers in the `acmart`, `cvpr`, and `iccv` templates. The package requires an option `[cvpr]` or `[iccv]` for compatibility with the latest versions of those templates. You can read the comments in the package file for a full list of included packages and their intended use. Some notable examples include:
	1. **`booktabs`**: The [booktabs](http://www.ctan.org/pkg/booktabs) package allows you to create publication-quality tables. As a general rule of thumb, if you have vertical lines in your table, you are likely doing something wrong.
	2. **`microtype`**: The [microtype](http://ctan.org/pkg/microtype) package incorporates several micro adjustments to make the typography easier to read and more beautiful. As an added bonus, it also tends to shorten the paper slightly due to differences in line wrapping.
	3. **`xspace`**: The [xspace](http://www.ctan.org/pkg/xspace) package allows you to define macros that interact properly with surrounding spaces and punctuation.

3. **`Makefile`**: You can use this file with `make` to build a document from the command line (assuming you have TeX installed), as well as to clean files $\LaTeX$ produces during compilation. You need to edit the first line to update the target file for your project.

4. **`.gitignore`**: You can use this file to have `git` ignore all compilation files $\LaTeX$ produces.

## Reading

If you were to read just one book on writing, I would recommend [On Writing Well](https://www.amazon.com/Writing-Well-Classic-Guide-Nonfiction/dp/0060891548), by William Zinnser. If you are in my lab, I would be happy to buy you a copy if you cannot get your hands on one.

For further reading, you should take a look at many other useful resources online discussing similar topics:
- <https://cs.dartmouth.edu/wjarosz/writing.html>
- <https://research.siggraph.org/blog/guides/writing-your-first-acm-siggraph-tog-paper/>
- <http://www.ece.ucdavis.edu/~jowens/commonerrors.html>
- <http://www.ece.ucdavis.edu/~jowens/biberrors.html>
- <http://people.csail.mit.edu/fredo/PUBLI/writing.pdf>
- <https://freedom-to-tinker.com/blog/dwallach/public-service-rant-please-fix-your-bibliography/>
- <http://www.cl.cam.ac.uk/~mgk25/publ-tips/>
- <http://www.slideshare.net/jdily/how-to-write-a-siggraph-paper>
- <https://www.lightbluetouchpaper.org/2007/03/14/how-not-to-write-an-abstract/>
- <http://www.read.seas.harvard.edu/~kohler/latex.html>
- <http://public.wsu.edu/~brians/errors/errors.html>
- <http://english.stackexchange.com/>
- <http://www.cs.cmu.edu/~jrs/sins.html>
