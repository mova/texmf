\ProvidesClass{moluaart}[2012/18/10 v 0.1 mo srcartcl lualatex]
\LoadClass[xelatex, xcolor={x11names,table,hyperref}]{beamer}

%\RequirePackage{abstract}
\RequirePackage{amsfonts,amsthm}
\RequirePackage{amsmath}
%\RequirePackage{amsrefs}
%\RequirePackage{beamerthemesplit}
\RequirePackage[ngerman,english]{babel}
%\RequirePackage{beamerthemesplit}
\RequirePackage{booktabs}
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
%\RequirePackage{float}
\RequirePackage{fontspec}
%\RequirePackage{framed}
\RequirePackage{graphicx}
\RequirePackage{hyperref}%fehler mit geometry
\RequirePackage{ifthen}
\RequirePackage{lettrine}
\RequirePackage{listings}
\RequirePackage{luatextra}
%\RequirePackage{lua-visual-debug}
\RequirePackage{multicol}
% \RequirePackage[noamsmath]{libertine}
%\RequirePackage[squaren]{SIunits}
\RequirePackage{tabularx}
\RequirePackage{tikz}
\RequirePackage{url}
\RequirePackage[x11names,table,hyperref]{xcolor}



\setmonofont{Ubuntu Mono}
\setromanfont[Numbers={Lining,Proportional}]{Linux Libertine O}
\setsansfont{Ubuntu}
%\usefonttheme{professionalfonts}
%\usefonttheme{serif}




\numberwithin{equation}{section}
\renewcommand{\thefootnote}{\arabic{footnote}}
\newcommand{\pfeil}{\boldmath $\rightarrow$}

\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}[subsections numbered]
\setbeamerfont{subsection in toc}{parent=section in toc, size=\footnotesize}
\setbeamercolor{section in toc}{fg=black}
\setbeamercolor{subsection in toc}{fg=beamer@blendedblue}
\setbeamercolor{bibliography entry}{fg=black}
\setbeamerfont{frametitle}{series=\sffamily}
\setbeamerfont{table of contents}{series=\sffamily}
\setbeamerfont{projected text}{series=\sffamily}

\hypersetup{
bookmarks=true,
bookmarksnumbered=true,
pdfborder={0 0 0},
colorlinks=false
}
%\title{\inserttitle}
%\date{\insertdate}
%\author{\insertauthor}


\newcommand\getcurrentref[1]{%
 \ifnumequal{\value{#1}}{0}
  {??}
  {\the\value{#1}}%
}    
\definecolor{gray}{rgb}{.8,0.8,0.8}
\newenvironment{quotebox}[1]{%
  \hspace{-0.2cm} \color{white} \colorbox{beamer@blendedblue}{\makebox{#1}} \vspace{-0.3cm}  %
  \def\FrameCommand{\fcolorbox{beamer@blendedblue}{beamer@blendedblue}}%
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


\newcount\Level
\let\Part=\part\def\part{\global\Level=0\Part}
\let\Chapter=\chapter\def\chapter{\global\Level=1\Chapter}
\let\Section=\section\def\section{\global\Level=2\Section}
\let\Subsection=\subsection\def\subsection{\global\Level=3\Subsection}
\let\Subsubsection=\subsubsection\def\subsubsection{\global\Level=4\Subsubsection}

% this part is modified from Till Tantau <tantau@users.sourceforge.net>
%
% This part can be redistributed and/or modified under the terms
% of the GNU Public License, version 2.

\DeclareOptionBeamer{compress}{\beamer@compresstrue}
\ProcessOptionsBeamer
\mode<presentation>{\setbeamercovered{transparent}}
\useinnertheme{default}
\setbeamercolor{frametitle}{fg=white}
\setbeamercolor{framesubtitle}{fg=white}
\setbeamercolor{frametitle right}{fg=white}

%|%%%%%%%%%%%%%%%%%%%colors%%%%%%%%%%%%%%%%%%%%%%%%
%|Farbe des Titels/Untertitels:
\definecolor{beamer@blendedblue}{rgb}{0.33,0.66667,0.109} % use structure theme to change
%|Farbe der Symbole bei Aufzählungen:
\definecolor{beamer@headline}{rgb}{0.5,0.57255,0.48235}
%|Farbe der Schrift von Author und Fakultt:
\definecolor{beamer@fakultaet}{rgb}{0.36863,0.59216,0.0} 
%|Farben der einzellnen Fakultäten:
\definecolor{farbwert-blau}{rgb}{0.4901,0.6039,0.6666}
\definecolor{farbwert-beige}{rgb}{0.6627,0.6352,0.5529}
\definecolor{farbwert-mawi}{rgb}{0.3372,0.6667,0.1098}
\definecolor{farbwert-inwiin}{rgb}{0.6392,0.1490,0.2196}
\definecolor{farbwert-nawi}{rgb}{0.7411,0.3764,0.0196}


\setbeamercolor{author in head/foot}{parent=palette primary}
\defbeamertemplate*{part page}{myulm }[1][]
{
  \begin{centering}
  {\usebeamerfont{part name}\usebeamercolor[fg]{part name}\partname~\insertromanpartnumber}
  \vskip1em\par
  \begin{beamercolorbox}[sep=8pt,center,#1]{part title}
  \usebeamerfont{part title}\insertpart\par
  \end{beamercolorbox}
  \end{centering}
} 
%%%%%%%%%%%%%%%%%%%%Outer%%%%%%%%%%%%%%%%%%%%%%%%%
\setbeamercolor{frametitle}{parent=palette primary}

\defbeamertemplate*{headline}{myulm}{%
	\vspace{0.2cm}

	\hspace{-0.3cm}
	%\textcolor{beamer@blendedblue}{
	\begin{tabularx}{\paperwidth}[t]{cl|l|X|r}
	\hline
	\textcolor[rgb]{1,1,1}{\colorbox{beamer@blendedblue}{\makebox[7ex]{Folie \insertframenumber}}} &
	{\inserttitle} &  section & $\;$ &
	%{\insertsectionhead}{ \ifnum \the\Level=3  \ - \  \insertsubsectionhead \fi } & $\;$ &
	{\numold{\insertdate}}
	\end{tabularx}
	%}
	\vspace{0.8cm}  
}

\defbeamertemplate*{footline}{myulm}
  {%
  \begin{beamercolorbox}[ht=2.5ex,dp=1.125ex,%
   leftskip=.3cm,rightskip=.3cm plus1fil]{author in head/foot}%
  \centering \textsc{\insertauthor}
  \end{beamercolorbox}%
  }

\mode
<all>