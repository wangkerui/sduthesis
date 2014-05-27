%%
%% This is file `sduthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% sduthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2014-2014 by Kerui Wang <wkr@wangkerui.com>
%% 
%% Copyright (C) 2005-2014 by Ruini Xue <xueruini@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sduthesis}
[2014/05/05 0.1.0 Shandong University Thesis Template]
\newif\ifsdu@UTF
\newif\ifsdu@GBK
\DeclareOption{utf}{\sdu@UTFtrue\sdu@GBKfalse}
\DeclareOption{gbk}{\sdu@GBKtrue\sdu@UTFfalse}
\hyphenation{Sdu-Thesis}
\def\sduthesis{\textsc{SduThesis}}
\def\version{0.1.0}
\newif\ifsdu@master\sdu@masterfalse
\newif\ifsdu@doctor\sdu@doctorfalse
\newif\ifsdu@secret\sdu@secretfalse
\DeclareOption{master}{\sdu@mastertrue}
\DeclareOption{doctor}{\sdu@doctortrue}
\DeclareOption{secret}{\sdu@secrettrue}
\newif\ifsdu@equival\sdu@equivalfalse
\newif\ifsdu@engineer\sdu@engineerfalse
\DeclareOption{equival}{\sdu@equivaltrue}
\DeclareOption{engineer}{\sdu@engineertrue}
\newif\ifsdu@dvips
\newif\ifsdu@dvipdfm
\newif\ifsdu@xetex
\newif\ifsdu@pdftex
\DeclareOption{dvips}{\sdu@dvipstrue}
\DeclareOption{dvipdfm}{\sdu@dvipdfmtrue}
\DeclareOption{pdftex}{\sdu@pdftextrue}
\DeclareOption{xetex}{\sdu@xetextrue}
\newif\ifsdu@arial
\DeclareOption{arial}{\sdu@arialtrue}
\newif\ifsdu@arialtoc
\DeclareOption{arialtoc}{\sdu@arialtoctrue}
\newif\ifsdu@arialtitle
\DeclareOption{arialtitle}{\sdu@arialtitletrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{utf}
\ProcessOptions\relax
\LoadClass[12pt,a4paper]{book}
\ifsdu@master\relax\else
  \ifsdu@doctor\relax\else
      \ClassError{sduthesis}%
           {You have to specify one of thesis options: master or doctor.}{}
  \fi
\fi
\RequirePackage{ifpdf,ifxetex}
\ifsdu@xetex\RequireXeTeX\fi
\def\RequirePDFTeX{%
  \ifpdf\else
    \ClassError{sduthesis}%
               {pdfLaTeX is required to compile this document!}{}
  \fi}
\ifsdu@pdftex\RequirePDFTeX\fi
\def\sdu@checkoption#1#2{%
  \@for\reserved@a:=#2\do{%
    \csname ifsdu@\reserved@a\endcsname
      \ClassError{sduthesis}%
                 {Please remove `\reserved@a' option when you run #1.}{}
    \fi}}
\ifpdf\sdu@checkoption{pdflatex}{dvips,dvipdfm,xetex}\sdu@pdftextrue\fi%
\ifxetex\sdu@checkoption{xelatex}{dvips,dvipdfm,pdftex}\sdu@xetextrue\fi
\RequirePackage{ifthen,calc}
\RequirePackage{amsmath,amssymb}
\RequirePackage{txfonts}
\RequirePackage{graphicx}
\RequirePackage[config]{subfig}
\RequirePackage{indentfirst}
\RequirePackage[neverdecrease]{paralist}
\ifsdu@xetex
  \RequirePackage{mathptmx}
  \RequirePackage{xltxtra}
  \RequirePackage[CJKnumber,BoldFont,normalindentfirst]{xeCJK}%,ItalicFont
  \punctstyle{quanjiao}
  % todo: minor fix of CJKnumb
  \def\CJK@null{\kern\CJKnullspace\Unicode{48}{7}\kern\CJKnullspace}
  \defaultfontfeatures{Mapping=tex-text} % use TeX --
\setCJKmainfont[BoldFont={SimHei}, ItalicFont={KaiTi}]{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{KaiTi}% KaiTi_GB2312 for windows XP
\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{fs}{FangSong}% FangSong_GB2312 for windows XP
\setCJKfamilyfont{kai}{KaiTi}% KaiTi_GB2312 for windows XP
\setCJKfamilyfont{li}{LiSu}
\setCJKfamilyfont{you}{YouYuan}

  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \setmonofont{Courier New}
\else
  \RequirePackage{CJKutf8}
  \RequirePackage{CJKnumb}
  \ifsdu@GBK % CJKpunct 在 UTF 下工作的不好。
    \IfFileExists{CJKpunct.sty}%
                 {\RequirePackage{CJKpunct}}%
                 {\ClassWarning{sduthesis}{no CJKpunct.sty availiable!}}
  \fi
  \RequirePackage{CJKspace}
  \ifsdu@arial
    \IfFileExists{arial.sty}%
                 {\RequirePackage{arial}}%
                 {\ClassWarning{sduthesis}{no arial.sty availiable!}}
  \fi
\fi
\ifsdu@dvips\else
  \ifsdu@xetex\else
    \RequirePackage{ccmap}
  \fi
\fi
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage[numbers,super,sort&compress]{natbib}
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi
\hypersetup{%
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=1,
  breaklinks=true,
  colorlinks=false,
  plainpages=false,
  pdfpagelabels,
  pdfborder=0 0 0}
\ifsdu@dvips
  \RequirePackage{breakurl}
\fi
\urlstyle{same}
\RequirePackage{algorithm, algorithmic}
\RequirePackage{hypernat}
\renewcommand\frontmatter{% <-- 正文之前
                          % <-- 页码用大写罗马数字，页眉页脚全
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{sdu@headings}}
\renewcommand\mainmatter{% <-- 正文，阿拉伯数字页码，页眉页脚全
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \setcounter{chapter}{0}% <-- 使正文从第1章开始计数
  \pagenumbering{arabic}
  \pagestyle{sdu@headings}}
\renewcommand\backmatter{% <-- 正文之后，无章序号
                         % <-- 附录（附录有序号，用大写字母），参考文献，致谢，发表论文/参与项目情况
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse}
\newcommand{\song}{\CJKfamily{song}}    % 宋体
\def\songti{\song}
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\def\fangsong{\fs}
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\def\kaishu{\kai}
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\def\heiti{\hei}
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\def\lishu{\li}
\newcommand{\you}{\CJKfamily{you}}      % 幼圆
\def\youyuan{\you}
\newlength\sdu@linespace
\newcommand{\sdu@choosefont}[2]{%
   \setlength{\sdu@linespace}{#2*\real{1.2}*\real{#1}}%
   \fontsize{#2}{\sdu@linespace}\selectfont}
\def\sdu@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \sdu@choosefont{##1}{#2}}}
\sdu@define@fontsize{chuhao}{42bp}
\sdu@define@fontsize{xiaochu}{36bp}
\sdu@define@fontsize{yihao}{26bp}
\sdu@define@fontsize{xiaoyi}{24bp}
\sdu@define@fontsize{erhao}{22bp}
\sdu@define@fontsize{xiaoer}{18bp}
\sdu@define@fontsize{sanhao}{16bp}
\sdu@define@fontsize{xiaosan}{15bp}
\sdu@define@fontsize{sihao}{14bp}
\sdu@define@fontsize{banxiaosi}{13bp}
\sdu@define@fontsize{xiaosi}{12bp}
\sdu@define@fontsize{dawu}{11bp}
\sdu@define@fontsize{wuhao}{10.5bp}
\sdu@define@fontsize{xiaowu}{9bp}
\sdu@define@fontsize{liuhao}{7.5bp}
\sdu@define@fontsize{xiaoliu}{6.5bp}
\sdu@define@fontsize{qihao}{5.5bp}
\sdu@define@fontsize{bahao}{5bp}
\renewcommand\normalsize{%
  \song\xiaosi[1.5]\selectfont
  \abovedisplayskip=10bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=10bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\AtBeginDvi{\special{papersize=\the\paperwidth,\the\paperheight}}
\AtBeginDvi{\special{!%
      \@percentchar\@percentchar BeginPaperSize: a4
      ^^Ja4^^J\@percentchar\@percentchar EndPaperSize}}
\setlength{\textwidth}{\paperwidth}
\setlength{\textheight}{\paperheight}
\setlength{\voffset}{-1in}
\setlength{\hoffset}{-1in}
\setlength\marginparwidth{0cm}
\setlength\marginparsep{0cm}
\addtolength{\textwidth}{-6cm}
\addtolength{\textheight}{-6cm}
\setlength{\topmargin}{22mm-3.7mm}
\setlength{\headheight}{3.7mm}
\setlength{\headsep}{0.8cm}
\setlength{\oddsidemargin}{3cm}
\setlength{\footskip}{0.8cm+3.7mm}
\setlength{\evensidemargin}{\oddsidemargin}
\let\sdu@cleardoublepage\cleardoublepage
\newcommand{\sdu@clearemptydoublepage}{%
  \clearpage{\pagestyle{empty}\sdu@cleardoublepage}}
\let\cleardoublepage\sdu@clearemptydoublepage
\def\ps@sdu@empty{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}
\def\ps@sdu@plain{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \def\@oddfoot{\hfil\wuhao\thepage}
  \def\@evenfoot{\wuhao\thepage\hfil}}
\def\ps@sdu@headings{%
  \def\@oddhead{\vbox to\headheight{%
    \hb@xt@\textwidth{\hfill\ifsdu@doctor\xiaosi\else\wuhao\fi\song\headmark\hfill}%
      \vskip2pt%
      \ifsdu@doctor
        \hbox{\vrule width\textwidth height2.4pt depth0pt}%
        \vskip 1pt%
        \hbox{\vrule width\textwidth height0.4pt depth0pt}%
      \else
        \hbox{\vrule width\textwidth height0.4pt depth0pt}%
      \fi}}
  \def\@evenhead{\vbox to\headheight{%
    \hb@xt@\textwidth{\hfill\ifsdu@doctor\xiaosi\else\wuhao\fi\song\headmark\hfill}%
      \vskip2pt
      \ifsdu@doctor
        \hbox{\vrule width\textwidth height2.4pt depth0pt}%
        \vskip 1pt%
        \hbox{\vrule width\textwidth height0.4pt depth0pt}%
      \else
        \hbox{\vrule width\textwidth height0.4pt depth0pt}%
      \fi}}
  \def\@oddfoot{\hfil\wuhao\thepage}
  \def\@evenfoot{\wuhao\thepage\hfil}}
\def\CJKindent{%
  \parindent 2em}
\setlength{\parskip}{0pt \@plus2pt \@minus0pt}
\def\sdu@item@space{%
  \let\itemize\compactitem
  \let\enditemize\endcompactitem
  \let\enumerate\compactenum
  \let\endenumerate\endcompactenum
  \let\description\compactdesc
  \let\enddescription\endcompactdesc}
\newcommand*\MakePerPage[2][\@ne]{%
  \expandafter\def\csname c@pchk@#2\endcsname{\c@pchk@{#2}{#1}}%
  \newcounter{pcabs@#2}%
  \@addtoreset{pchk@#2}{#2}}
\def\new@pagectr#1{\@newl@bel{pchk@#1}}
\def\c@pchk@#1#2{\z@=\z@
  \begingroup
  \expandafter\let\expandafter\next\csname pchk@#1@\arabic{pcabs@#1}\endcsname
  \addtocounter{pcabs@#1}\@ne
  \expandafter\ifx\csname pchk@#1@\arabic{pcabs@#1}\endcsname\next
  \else \setcounter{#1}{#2}\fi
  \protected@edef\next{%
    \string\new@pagectr{#1}{\arabic{pcabs@#1}}{\noexpand\thepage}}%
  \protected@write\@auxout{}{\next}%
  \endgroup\global\z@}
\MakePerPage{footnote}
\def\sdu@textcircled#1{%
  \ifnum \value{#1} <10 \textcircled{\xiaoliu\arabic{#1}}
  \else\ifnum \value{#1} <100 \textcircled{\qihao\arabic{#1}}\fi
  \fi}
\renewcommand{\thefootnote}{\sdu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\sdu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\sdu@footnotesize\footnotesize
\renewcommand\footnotesize{\sdu@footnotesize\xiaowu[1.5]}
\def\@makefnmark{\textsuperscript{\hbox{\normalfont\@thefnmark}}}
\long\def\@makefntext#1{
  \bgroup
    \setbox\@tempboxa\hbox{%
      \hb@xt@ 2em{\@thefnmark\hss}}
    \leftmargin\wd\@tempboxa
    \rightmargin\z@
    \linewidth \columnwidth
    \advance \linewidth -\leftmargin
    \parshape \@ne \leftmargin \linewidth
    \footnotesize
    \@setpar{{\@@par}}%
    \leavevmode
    \llap{\box\@tempboxa}%
    #1
  \par\egroup}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\sdu@make@df@tag@@\make@df@tag@@@}
\def\sdu@make@df@tag@@#1{\gdef\df@tag{\sdu@maketag{#1}\def\@currentlabel{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\sdu@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\gdef\@endtrivlist#1{%  % from \endtrivlist
  \if@inlabel \indent\fi
  \if@newlist \@noitemerr\fi
  \ifhmode
    \ifdim\lastskip >\z@ #1\unskip \par
      \else #1\unskip \par \fi
  \fi
  \if@noparlist \else
    \ifdim\lastskip >\z@
       \@tempskipa\lastskip \vskip -\lastskip
      \advance\@tempskipa\parskip \advance\@tempskipa -\@outerparskip
      \vskip\@tempskipa
    \fi
    \@endparenv
  \fi #1}
\theorembodyfont{\song\rmfamily}
\theoremheaderfont{\hei\rmfamily}
\setlength{\floatsep}{12bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{12bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{12bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\let\old@tabular\@tabular
\def\sdu@tabular{\wuhao[1.5]\old@tabular}
\DeclareCaptionLabelFormat{sdu}{{\wuhao[1.5]\song #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{sdu}{\hspace{1em}}
\DeclareCaptionFont{sdu}{\wuhao[1.5]}
\captionsetup{labelformat=sdu,labelsep=sdu,font=sdu}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[subfloat]{labelformat=simple,font=sdu,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\sdu@LT@array\LT@array
\def\LT@array{\wuhao[1.5]\sdu@LT@array} % set default font size
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\ifsdu@arialtitle
  \def\sdu@title@font{\sffamily}
\fi
\renewcommand\chapter{%
  \ifsdu@doctor\if@openright\cleardoublepage\else\clearpage\fi%
  \else\clearpage\fi%
 \phantomsection%
 \global\@topnum\z@%
  \@afterindenttrue%
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \def\@tmpa{#1}
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \addcontentsline{toc}{chapter}{\protect\numberline{\@chapapp}#1}%
    \fi
  \fi
  \if@mainmatter\else
    \ifx\@tmpa\@empty\addtocounter{chapter}\@ne\pdfbookmark[0]{#2}{chapter.\thechapter}
    \else\addcontentsline{toc}{chapter}{#1}\fi
  \fi
  \@makechapterhead{#2}}
\def\@makechapterhead#1{%
  {\parindent \z@ \centering
    \fontseries{b}\hei\xiaosan[1.5]\csname sdu@title@font\endcsname
    \vspace*{-17bp}
    \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
          \@chapapp\hskip1em
       \fi
    \fi
  #1\par\nobreak}
  \vspace*{17bp}%
}
\def\@schapter#1{%
  \@makeschapterhead{#1}
}
\def\@makeschapterhead#1{%
  {\parindent \z@ \centering
    \vspace*{-17bp}
   \fontseries{b}\hei\xiaosan[1.5]\csname sdu@title@font\endcsname
   #1\par\nobreak}
   \vspace*{17bp}}
\newcommand\echapter{%
  \secdef\@echapter\@sechapter}
\newcommand{\sdu@echaptername}{Chapter}
\def\@echapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
   \if@mainmatter
     \addcontentsline{toe}{chapter}{\sdu@echaptername~\thechapter ~~#1}%
   \else
     \addcontentsline{toe}{chapter}{#1}%
   \fi
  \else
    \addcontentsline{toe}{chapter}{#1}%
  \fi
  \relax\par\nobreak
}
\def\@sechapter#1{%
  \relax\par\nobreak%
}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                     {-13bp\@plus -1ex \@minus -.2ex}%
                     {13bp \@plus .2ex}%
                     {\fontseries{b}\hei\sihao[1.5]\csname sdu@title@font\endcsname}}
\newcommand\esection[1]{% <-- 为了生成英文目录
                     \addcontentsline{toe}{section}{\protect\numberline{\thesection}#1}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                        {-13bp\@plus -1ex \@minus -.2ex}%
                        {13bp \@plus .2ex}%
                        {\fontseries{b}\xiaosi[1.5]\hei\csname sdu@title@font\endcsname}}
\newcommand\esubsection[1]{% <-- 为了生成英文目录
                     \addcontentsline{toe}{subsection}{\protect\numberline{\thesubsection}#1}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                           {-6bp\@plus -1ex \@minus -.2ex}%
                           {6bp \@plus .2ex}%
                           {\fontseries{b}\xiaosi[1.5]\hei\csname sdu@title@font\endcsname}}
\newcommand\esubsubsection[1]{% <-- 为了生成英文目录
                     \addcontentsline{toe}{subsubsection}{\protect\numberline{\thesubsubsection}#1}}
\def\sdu@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname sdu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\sdu@define@term{catalognumber}
\sdu@define@term{schoolnumber}
\sdu@define@term{secretlevel}
\sdu@define@term{secretyear}
\sdu@define@term{studentnumber}
\sdu@define@term{ctitle}
\sdu@define@term{etitle}
\sdu@define@term{cauthor}
\sdu@define@term{cdepartment}
\sdu@define@term{cmajor}
\sdu@define@term{csupervisor}
\sdu@define@term{ccosupervisor}
\sdu@define@term{cdate}
\sdu@define@term{eauthor}
\sdu@define@term{edepartment}
\sdu@define@term{emajor}
\sdu@define@term{esupervisor}
\sdu@define@term{ecosupervisor}
\sdu@define@term{eaddress}
\sdu@define@term{edate}
\newcommand\sdu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand{\sdu@cover@english@mk}{%
  \begin{titlepage}\begin{center}
    {\sanhao[1.2]\bfseries\sffamily\sdu@etitle}
    \vspace{3cm}
    \sanhao[1.8]

    by

    \bfseries\sdu@eauthor

    Supervisor: \sdu@esupervisor

\vfill

    For the degree of

    Doctor of Philosophy

\vfill

    \sdu@eaddress

    \sdu@edate
  \end{center}\end{titlepage}}
\newcommand{\makecover}{% TODO：lots of ugly codes. 提取格式控制代码为内部命令
  \phantomsection
  \pdfbookmark[-1]{\sdu@ctitle}{ctitle}
  \begin{titlepage}%
    \sdu@cover@hat@mk%            <-- hat区
    \vskip 20pt
    \sdu@cover@logo@mk%           <-- logo区
    \vspace{-10pt}
    \sdu@cover@covertitle@mk%     <-- covertitle区
    \vskip 10pt
    \sdu@cover@thesistitle@mk%    <-- thesistitle区
    \vfill
    \sdu@cover@authorinfo@mk%     <-- authorinfo区
    \vskip 2.5em
    \sdu@cover@date@mk%           <-- date区
  \end{titlepage}
  \ifsdu@doctor% 博士论文需要增加英文封面
    \sdu@cover@english@mk
  \fi
  \normalsize
  \let\@tabular\sdu@tabular}
\newcommand{\sdu@cover@hat@mk}{%
  \parindent 0em
  \begin{tabular*}{\textwidth}{p{0.65\textwidth}p{0.35\textwidth}}
    \sdu@cover@hat@format{\sdu@catalog@number@title\sdu@title@sep\sdu@catalognumber}
      & \sdu@cover@hat@format{\sdu@school@number@title\sdu@title@sep\sdu@schoolnumber} \\
    \sdu@cover@hat@format{\sdu@secretlevel@title\sdu@title@sep\sdu@secretlevel@content}
      & \sdu@cover@hat@format{\sdu@student@number@title\sdu@title@sep\sdu@studentnumber} \\
  \end{tabular*}}
\newcommand{\sdu@cover@hat@format}[1]{%
  {\fontseries{b}\song\sihao[1.8]#1}}
\newcommand{\sdu@cover@logo@mk}{%
  \begin{center}
    \includegraphics[width=255pt]{logo}% <-- TODO：图片尺寸是340x105，不知道为什么参数要乘以.75。
  \end{center}}
\newcommand{\sdu@cover@covertitle@mk}{%
\begin{center}
  {\fontseries{b}\fontsize{62bp}{62bp*\real{1.2}}\selectfont\hei\ziju{10bp}\scalebox{0.9}[1]{\sdu@cover@title}}
  \vskip 10pt
  {\song\erhao[2]\sdu@cover@subtitle}

  \ifsdu@equival
    \vskip 10pt
    {\hei\xiaoer[2]\sdu@cover@equival@text}
  \fi

  \ifsdu@engineer
    \vskip 10pt
    {\hei\xiaoer[2]\sdu@cover@engineer@text}
  \fi
\end{center}
}
\newcommand{\sdu@cover@thesistitle@mk}{%
\begin{tabular*}{\textwidth}{p{0.2\textwidth}p{0.8\textwidth}}
  {\fontseries{b}\song\xiaoer[2]\ziju{0.1bp}\scalebox{0.9}[1]{\sdu@title@title\sdu@title@sep}} & {\fontseries{b}\hei\xiaoer\sdu@ctitle} \\
                                 & {\fontseries{b}\hei\sffamily\sanhao[2]\sdu@etitle}
\end{tabular*}
}
\newcommand{\sdu@cover@authorinfo@mk}{%
\begin{center}\fontseries{b}\song\xiaosan
  \setlength{\extrarowheight}{12pt}
  \begin{tabular}{p{5.5em}@{}c}
  {\ziju{10bp}\scalebox{0.9}[1]{\sdu@author@title}}       &  \sdu@underline[11em]{\fontseries{b}\hei\sihao\sdu@cauthor} \\
  {\ziju{10bp}\scalebox{0.9}[1]{\sdu@department@title}}   &  \sdu@underline[11em]{\fontseries{b}\hei\sihao\sdu@cdepartment} \\
  {\ziju{10bp}\scalebox{0.9}[1]{\sdu@major@title}}        &  \sdu@underline[11em]{\fontseries{b}\hei\sihao\sdu@cmajor} \\
  {\ziju{10bp}\scalebox{0.9}[1]{\sdu@supervisor@title}}   &  \sdu@underline[11em]{\fontseries{b}\hei\sihao\sdu@csupervisor} \\
  {\ziju{10bp}\scalebox{0.9}[1]{\sdu@cosupervisor@title}} &  \sdu@underline[11em]{\ifx\sdu@ccosupervisor\@empty\else{\fontseries{b}\hei\sihao\sdu@ccosupervisor}\fi} \\
    \end{tabular}
\end{center}%
}
\newcommand{\sdu@cover@date@mk}{%
  \begin{center}
    \fontseries{b}\hei\xiaoer\sffamily\ziju{10bp}\sdu@cdate
  \end{center}
}
\sdu@define@term{originalitytitle}
\sdu@define@term{originalitycontent}
\sdu@define@term{authorizationtitle}
\sdu@define@term{authorizationcontent}
\sdu@define@term{authorizationaddon}
\newcommand{\makestatement}{%
\begin{titlepage}
\vspace{2cm}
\sihao[1.8]\parindent 2em%
\centerline{\sanhao[1.8]\hei\sdu@originalitytitle}
\sdu@originalitycontent

\vspace{40pt}
\noindent\hspace{40pt}论文作者签名：\hrulefill 日\hspace{1em}期：\hrulefill \hspace{40pt}

\vspace{80pt}

\centerline{\sanhao[1.8]\hei\sdu@authorizationtitle}
\sdu@authorizationcontent

\vspace{6bp}
\sdu@authorizationaddon

\vspace{40pt}
\noindent 论文作者签名：\hrulefill 导师签名：\hrulefill 日\hspace{1em}期：\hrulefill
\end{titlepage}}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\newenvironment{contents}{%
}{%
}
\renewcommand\tableofcontents{%
  \cleardoublepage% 目录从奇数页开始
  \@mainmatterfalse
  \pagenumbering{roman}
  \pagestyle{sdu@headings}
  \normalsize%
  \chapter[]{\contentsname}
  \@starttoc{toc}}
\ifsdu@arialtoc
  \def\sdu@toc@font{\sffamily}
\fi
\def\@pnumwidth{2em} % 这个参数没用了
\def\@tocrmarg{2em}
\def\@dotsep{1} % 目录点间的距离
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
    {\csname sdu@toc@font\endcsname #4}\nobreak
    \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
    \nobreak{\normalfont \normalcolor #5}%
    \par}%
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 4bp \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {\textbf{#1}} % numberline is called here, and it uses \@tempdima
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak{\normalfont\normalcolor #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{1.2em}{2.1em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{2em}{3em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{3.5em}{3.8em}}
\newcommand\tableofecontents{%
  \chapter[]{\econtentsname}
  \@starttoc{toe}}
\newenvironment{denotation}[1][2.5cm]{
  \chapter[]{\sdu@denotation@name}% no tocline
  \noindent\begin{list}{}%
    {\vskip-30bp\xiaosi[1.5]
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
   }}{\end{list}}
\let\sdu@appendix\appendix
\renewenvironment{appendix}{%
  \sdu@appendix
  \@mainmattertrue% <-- 为了显示章节序号
  \gdef\@chapapp{\appendixname~\thechapter}
  \renewcommand{\sdu@echaptername}{\eappendixname}% <-- 英文目录附录项显示Appendix
  %\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
  }{}
\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa%
  \unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
  \if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\onlinecite{\@onlinecite}
\def\@onlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\renewenvironment{thebibliography}[1]{%
   \chapter{\bibname}%
   \echapter{\ebibname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{1.1cm}
         \setlength{\labelsep}{0.4em}
         \setlength{\itemindent}{0pt}
         \setlength{\leftmargin}{\labelwidth+\labelsep}
         \setlength{\topsep}{0pt}% 标签与上文的间距
         \addtolength{\itemsep}{-0.7em}
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy\frenchspacing
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \interlinepenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist\frenchspacing}
\newcommand{\sdu@evaluationtitle}{学位论文评阅及答辩情况表}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}
\newcommand{\makeevaluation}{%
\let\@tabular\old@tabular
\begin{titlepage}
 \vskip -20em
 \chapter[]{\sdu@evaluationtitle}
 \fangsong\sihao
 \begin{table}[ht]
\parindent -0.05\textwidth\begin{tabular*}{1.1\textwidth}{|p{1em}<{\centering}|m{2em}<{\centering}|m{5.5em}<{\centering}|p{4em}|p{4em}|p{5em}|m{4em}<{\centering}|p{5em}<{\centering}|}
\hline
\multirow{6}{1em}{\tabincell{c}{\\ \\ 论\\ 文\\ 评\\ 阅\\ 人}} & \multicolumn{2}{c|}{\tabincell{c}{姓\qquad名}} & 专业技术职\quad\quad务 & 是否博导（硕导） & \multicolumn{2}{c|}{\linebreak 所~在~单~位} & 总体评价\linebreak ※ \\
 \cline{2-8}
 & \multicolumn{2}{c|}{} &  & \rule{0pt}{22pt} & \multicolumn{2}{c|}{} &  \\
 \cline{2-8}
 &  \multicolumn{2}{c|}{} & & \rule{0pt}{22pt} & \multicolumn{2}{c|}{} &  \\
 \cline{2-8}
 &  \multicolumn{2}{c|}{} & & \rule{0pt}{22pt} & \multicolumn{2}{c|}{} &  \\
 \cline{2-8}
 &  \multicolumn{2}{c|}{} & & \rule{0pt}{22pt} & \multicolumn{2}{c|}{} &  \\
 \cline{2-8}
 &  \multicolumn{2}{c|}{} & & \rule{0pt}{22pt} & \multicolumn{2}{c|}{} &  \\
\hline
\multirow{10}{*}{\tabincell{c}{\\ \\ 答\\辩\\委\\员\\会\\成\\员}} &\multicolumn{2}{c|}{姓\qquad名} & 专业技术职\quad\quad 务 & 是否博导（硕导） & \multicolumn{3}{c|}{所~在~单~位} \\
 \cline{2-8}
 & 主席 & & \rule{0pt}{21pt} &  &  \multicolumn{3}{c|}{}  \\
 \cline{2-8}
 & \multirow{8}{*}{\tabincell{c}{\\ 委\\  \\ \\ \\员}}& & \rule{0pt}{21pt} &  &   \multicolumn{3}{c|}{} \\
 \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
 \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
 \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
  \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
 \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
 \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
 \cline{3-8}
 &  & & \rule{0pt}{21pt} &  & \multicolumn{3}{c|}{} \\
\hline
\multicolumn{3}{|c|}{\tabincell{c}{答辩委员会对论\\ 文的总体评价※}} & & 答辩秘书 &  & 答辩日期 &  \\
\hline
\multicolumn{2}{|c|}{备注} & \multicolumn{6}{c|}{} \\
\hline
\end{tabular*}
 \end{table}
 \vspace{0cm}\nopagebreak
 \parindent 0em\fs\wuhao{※优秀为``A''；良好为``B''；合格为``C''；不合格为``D''。}
\end{titlepage}
\let\@tabular\sdu@tabular
}
\def\sdu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\sdu@listof#1{% #1: float type
  \@ifstar
    {\chapter[]{\csname list#1name\endcsname}\sdu@starttoc{#1}}
    {\chapter{\csname list#1name\endcsname}\sdu@starttoc{#1}%
     \echapter{\csname list#1ename\endcsname}}}
\renewcommand\listoffigures{\sdu@listof{figure}}
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\sdu@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\sdu@listof{equation}}
\let\l@equation\l@figure
\iffalse
\newcommand{\bs}{\symbol{'134}}%Print backslash
\newcommand{\cih}[1]{%
  \index{commands!#1@\texttt{\bs#1}}%
  \index{#1@\texttt{\hspace*{-1.2ex}\bs #1}}}
\newcommand{\ci}[1]{\cih{#1}\texttt{\bs#1}}
\newcommand{\pai}[1]{%
  \index{packages!#1@\textsf{#1}}%
  \index{#1@\textsf{#1}}%
  \textsf{#1}}
\newcommand{\ei}[1]{%
  \index{environments!\texttt{#1}}%
  \index{#1@\texttt{#1}}%
  \texttt{#1}}
\newcommand{\wi}[1]{\index{#1}#1}
\fi
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\def\sdu@active@cjk{
  % Activate all >128 characters.
  \count@=128
  \@whilenum\count@<254 \do{%
    \advance\count@ by 1
    \lccode`\~=\count@
    \catcode\count@=\active
    \lowercase{\def~{\kern1ex}}}}
\AtEndOfClass{\ifxetex\else\sdu@active@cjk\fi\input{sduthesis.cfg}}
\def\sdu@fixselectfont{%
  \ifx\@EverySelectfont@EveryHook\@undefined\else% everysel package is loaded
    \DeclareRobustCommand{\selectfont}{%
       \ifx\f@linespread\baselinestretch \else
          \set@fontsize\baselinestretch\f@size\f@baselineskip \fi
       \xdef\font@name{%
          \csname\curr@fontshape/\f@size\endcsname}%
       \pickup@font
       \font@name
       % CJK addition:
       \CJK@bold@false
       \csname \curr@fontshape\endcsname
       % everysel addition:
       \@EverySelectfont@EveryHook
       \@EverySelectfont@AtNextHook
       \gdef\@EverySelectfont@AtNextHook{}%
       % end additions
       \size@update
       \enc@update}
  \fi}
\def\sdu@setup@pdfinfo{%
  \hypersetup{%
    pdftitle={\sdu@ctitle},
    pdfauthor={\sdu@cauthor},
    pdfsubject={\sdu@cdegree},
    pdfkeywords={\sdu@ckeywords},
    pdfcreator={\sdu@cauthor},
    pdfproducer={\sduthesis}}}
\ifxetex
  \AtBeginDocument{\CJKindent}
\else
  \def\sdu@beginCJK{%
    \sdu@fixselectfont%
    \begin{CJK*}{UTF8}{song}\CJKindent}
  \def\sdu@endCJK{\clearpage\end{CJK*}}
  \let\sdu@begindocumenthook\@begindocumenthook
  \let\sdu@enddocumenthook\@enddocumenthook
  \def\AtBeginDocument{\g@addto@macro\sdu@begindocumenthook}
  \def\AtEndDocument{\g@addto@macro\sdu@enddocumenthook}
  \def\@begindocumenthook{\sdu@begindocumenthook\sdu@beginCJK}
  \def\@enddocumenthook{\sdu@endCJK\sdu@enddocumenthook}
\fi
\AtEndOfClass{\sloppy\sdu@item@space}
\endinput
%%
%% End of file `sduthesis.cls'.
