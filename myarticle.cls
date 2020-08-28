\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myarticle}[18/03/2019 custom CV class]
\LoadClass[openany]{article}

\RequirePackage{pifont}
\RequirePackage[a4paper]{geometry}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\renewcommand{\normalsize}{\fontsize{13.7}{11}\selectfont}
\setlength{\textwidth}{15.6cm}
\setlength{\textheight}{24cm}
\setlength{\oddsidemargin}{0.3cm}
\setlength{\evensidemargin}{0.3cm}
\setlength{\headsep}{0.5cm}
\setlength{\topmargin}{-0.5cm}
\RequirePackage{titlesec}

\renewcommand\titlerule{%
\parbox{\textwidth}{%
\nointerlineskip
\noindent\rule{5cm}{2pt}%
\par
\nointerlineskip
\noindent\rule{\textwidth}{.5pt}
\par}
}

\titleformat{\part}[display]
	{\Huge\scshape\raggedleft}
	{Parte \thepart}{0.5em}{}
	[]
 
\titleformat{\chapter}[display]
	{\Huge\bfseries\scshape\raggedleft}
	{Capítulo \thechapter}{0.5em}{\titlerule}
	[]
 
\titleformat{\section}
  {\LARGE\scshape}
  {\thesection}{0.5em}{}
  [\titlerule]
  
 
\titleformat{\subsection}
	{\LARGE\itshape}
	{\thesubsection}{1em}
	{}
	
\titleformat{\subsubsection}
	{\normalfont\normalsize\bfseries\scshape}
	{\thesubsubsection}{1em}
	{}
	
\parindent= 0mm
\renewcommand{\baselinestretch}{1.4} %espaciado entre renglones
\parskip= 2mm %espaciado entre párrafos\textbf{?}

\RequirePackage{amsthm}
\newtheoremstyle{mystyle}												% name
  {0.5cm}																	%Space above
  {0.1cm}																	%Space below
  {\slshape}															%Body font
  {0.2cm}																	%Indent amount
  {\scshape}															% Theorem head font
  {.}																	%Punctuation after theorem head
  {\newline}															%Space after theorem head 2
  {}																	%Theorem head spec (can be left empty, meaning normal)
\theoremstyle{mystyle}
\newtheorem{theorem}{\ding{99} Teorema}
\newtheorem{corollary}{\ding{107} Corolario}[theorem]
\newtheorem{lemma}{Lema}[section]
\newtheorem{proposition}{\ding{94} Proposición}
\newtheorem{definition}{\ding{104} Definición}
\newtheorem{examp}{\ding{101} Ejemplo}
\newtheorem{remark}{\ding{101} Nota}
\newenvironment{defin}[1]{\begin{definition}[\textbf{#1}]}{\end{definition}}
\newenvironment{example}[1]{\begin{examp}[\textbf{#1}]}{\hfill \ding{119}\end{examp}}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LO,RE]{\small{\textsc{\nouppercase{\rightmark}}}}
\fancyhead[RO,LE]{\thepage}

\RequirePackage{amsmath}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\re}{re}
\DeclareMathOperator{\interior}{int}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\vp}{p.v.\frac{1}{x}}
\DeclareMathOperator{\supp}{supp}
\DeclareMathOperator{\mult}{ mult}
\DeclareMathOperator{\id}{\,id}
\DeclareMathOperator{\grad}{\,grad}
\DeclareMathOperator{\rot}{\,rot}
\DeclareMathOperator{\diver}{\,div}


\RequirePackage[T1]{fontenc}
\newcommand{\FSfont}[1]{{\fontencoding{T1}\fontfamily{#1}\selectfont}}
\newlength{\drop}
\newcommand{\plogo}{\fbox{$\mathcal{KC}$}}
\RequirePackage{datetime}


\newcommand*{\titleJT}[3]{
\thispagestyle{empty}
\begingroup%
\FSfont{qzc}
%{\fontencoding{T1}\fontfamily{qzc}\selectfont}
\drop = 0.08\textheight
\vspace*{\drop}
\hspace*{0.3\textwidth}
{\Large #1}\\[2\drop]
\hspace*{0.3\textwidth}{\Huge\itshape #2}\par
{\raggedleft\Huge\itshape #3\par}
\vfill
\hspace*{0.3\textwidth}{\Large \plogo}\\[0.5\baselineskip]
\hspace*{0.3\textwidth}{\Large\today}
\vspace*{\drop}
\endgroup
\newpage 
\thispagestyle{empty}
}
\normalfont

\newcommand{\dem}[1]{\textsc{\hspace{0.5cm}Demostración: }#1 \hfill\ding{122} }
\newcommand{\sol}[1]{\textsc{\hspace{0.5cm}Solución: }#1 \hfill\ding{122} }
\newcommand{\Chi}{\mbox{\large$\chi$}} 
