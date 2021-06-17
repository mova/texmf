\ProvidesClass{moxart}[2009/11/03 v 0.1 mo srcartcl xelatex]

\LoadClass[%xcolor=dvipsnames, hyperref=dvipdfmx%, onlymath,bibtotoc,idxtotoc,liststotoc
onlymath]{scrartcl}

\RequirePackage{ifxetex}
\RequireXeTeX
\RequirePackage[x11names,table,hyperref]{xcolor}
\RequirePackage{amsmath}
\RequirePackage{mathspec}
%\RequirePackage[no-math]{fontspec}
\RequirePackage{xunicode,xltxtra}
\RequirePackage{polyglossia}


\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage{lettrine}

\RequirePackage{tikz}
%\RequirePackage[squaren]{SIunits}
\RequirePackage{graphicx}
\RequirePackage{amsfonts,amsthm}
%\RequirePackage{amsrefs}
\RequirePackage{listings}
\RequirePackage{abstract}
\RequirePackage{float}
\RequirePackage[setpagesize=false]{hyperref}%fehler mit geometry
\RequirePackage{ifthen}
\RequirePackage{framed}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
% \RequirePackage[noamsmath]{libertine}



\setmainlanguage[spelling=new, latesthyphen=true]{german}
\setotherlanguage[ordinalmonthday = true]{english}
\setkeys{english}{ordinalmonthday = true}

\defaultfontfeatures{Scale=MatchLowercase}
\setsansfont{Ubuntu}
\setromanfont[Numbers={Lining,Proportional}, Mapping=tex-text]{Linux Libertine O}
% \setallmonofonts{Ubuntu Mono}
%\setmathsfont(Digits,Latin){Neo Euler}

\numberwithin{equation}{section}
\newboolean{header}
\renewcommand{\thefootnote}{\arabic{footnote}}
\newcommand{\pfeil}{\boldmath $\rightarrow$}
\hypersetup{
bookmarks=true,
bookmarksnumbered=true,
pdfborder={0 0 0},
colorlinks=false
}
\title{\inserttitle}
\date{\insertdate}
\author{\insertauthor}

\newcommand\getcurrentref[1]{%
 \ifnumequal{\value{#1}}{0}
  {??}
  {\the\value{#1}}%
}    
\definecolor{gray}{rgb}{.8,0.8,0.8}
\newenvironment{quotebox}[1]{%
	\hspace{-0.2cm} \colorbox{gray}{\makebox{#1}} \vspace{-0.3cm}  %
	\def\FrameCommand{\fcolorbox{gray}{gray}}%
	\MakeFramed{%\FrameRestore}
  }
	%\begin{Satz}%
  \color{white} \relax  %\vspace{-0.5cm}
   }%
	{%\end{Satz}
  \endMakeFramed \relax }%




\DeclareRobustCommand*\OTF[1]{\fontspec[RawFeature=#1]{Linux Libertine O}}
\DeclareRobustCommand*\numprp{\OTF{-tnum;+pnum}}
\DeclareRobustCommand*\numtab{\OTF{-pnum;+tnum}}
\DeclareRobustCommand*\numold{\OTF{+onum}}
\DeclareRobustCommand*\numzero{\OTF{+zero}}
\DeclareRobustCommand*\numfrac{\OTF{+frac}}


\AtBeginDocument{
	% \iftrue\boolean{header}
	\pagestyle{fancy} %eigener Seitenstil
	\fancyhf{} %alle Kopf- und Fußzeilenfelder bereinigen
	\fancyhead[L]{\large \inserttitle} %Kopfzeile links
	%\fancyhead[R]{\thesection }
	\renewcommand{\headrulewidth}{0.4pt} %obere Trennlinie
	\renewcommand{\footrulewidth}{0.4pt}
	\fancyfoot[R]{\numold \thepage} %Seitennumme
	\fancyfoot[C]{\footnotesize \rmfamily \textsc{\insertauthor}} %author zentriert unten
	% \fi
}

