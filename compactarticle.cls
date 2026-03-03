\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{compactarticle}[2026/02/27 Compact article class]

% Adding showdate option for showing the date in the title
\newif\if@showdate
\@showdatefalse
\DeclareOption{showdate}{\@showdatetrue}

% Adding usebib option for including a bibliography at the end
\newif\if@usebib
\@usebibfalse
\DeclareOption{usebib}{\@usebibtrue}

\ProcessOptions\relax

\LoadClass[11pt]{article}

% Page Layout and Spacing
\RequirePackage[a4paper,margin=1in,heightrounded]{geometry}

% Proper encoding in input and output
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% Make \maketitle more compact
\RequirePackage{titling}
\newcommand{\subtitle}[1]{%
  \posttitle{%
    \par\end{center}
    \begin{center}\normalsize\textit{#1}\end{center}}%
}
\setlength{\droptitle}{-5em}
\posttitle{\par\end{center}\vspace{-1.4em}}

% Remove the date
\if@showdate\else
  \predate{\date{}}
  \postdate{\vspace{-1.0em}}
\fi

% Add a minimal bibliography (optional via class option usebib)
\if@usebib
  \usepackage[style=numeric-comp,uniquename=init, maxcitenames=2, minbibnames=5, maxbibnames=5, giveninits=true,doi=true]{biblatex}
  \nocite{*}
  \let\oldciteauthor\citeauthor
  \renewcommand{\citeauthor}[1]{\oldciteauthor{#1}\xspace\cite{#1}}
  \AtEndDocument{\printbibliography}
  \addbibresource{literature.bib}
\fi



% Set up PDF metadata
\RequirePackage[pdfusetitle,hidelinks]{hyperref}

% Fonts and Typography
\RequirePackage[lighttt]{lmodern}
\RequirePackage[nott,light]{kpfonts}
\renewcommand{\ttdefault}{lmtt}

% Better text flow and spacing
\RequirePackage[final]{microtype}

% Use proper quotation marks where possible
\PassOptionsToPackage{shorthands=off}{babel}
\RequirePackage[autostyle=true]{csquotes}
\MakeOuterQuote{"} % Standard double quotes

% Make headers more compact
\RequirePackage[compact,small]{titlesec}
\titlespacing*{\section}{0pt}{*1.5}{*0.5}
\titlespacing*{\subsection}{0pt}{*1}{*0.3}

% Make lists and enumerations more compact
\RequirePackage{enumitem}
\setlist{nosep}
\setlist[itemize]{label=--}

% Custom list environment for research questions
\newlist{RQs}{enumerate}{1}
\setlist[RQs]{left=\parindent, label=\textbf{RQ\arabic*:}, leftmargin=*, itemindent=\parindent, topsep=\medskipamount}

% Intelligent spacing
\RequirePackage{xspace}

% Enable colors
\RequirePackage{xcolor}

% Add a very simple command for TODO
\newcommand{\todo}[1]{\textbf{\textcolor{orange}{TODO:~#1}}\xspace}

% Provide a nice euro symbol
\RequirePackage{eurosym}
\DeclareUnicodeCharacter{20AC}{\euro}

% The document starts with a title
\AtBeginDocument{%
    \maketitle
}
