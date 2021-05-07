\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{plan_tesis}[2021/03/28 Clase para Informe de Investigación creado por WardoPo]

\LoadClass{report}

\usepackage[spanish]{babel}
\usepackage{titlesec}
\usepackage{changepage}      
\usepackage{enumitem}

% Estilo de titulos
\titleformat{\chapter}{\bfseries\centering\LARGE}{}{0pt}{}{}
\titleformat{\section}{\bfseries}{}{0pt}{}{}
\titleformat{\subsection}{\bfseries}{\hspace{0.63cm}\alph{subsection}. }{0pt}{}{}

% Estilos de Listas
\setlist[itemize]{left=1.25cm .. 2.5cm}
\setlist[enumerate]{left=0cm .. 1.25cm} %%Second Line Indentation to be revised

\newcounter{descriptcount}
\renewcommand*\thedescriptcount{\alph{descriptcount}}

\setlist[description]{before={\setcounter{descriptcount}{0}},font=\normalfont\stepcounter{descriptcount}\thedescriptcount)\qquad\quad,leftmargin = 0cm}

\renewcommand{\descriptionlabel}[1]{%
  \hspace\labelsep \upshape\bfseries #1:%
}

\setlength{\parindent}{0pt}

% Ambientes
\newenvironment{resumen}
{
    \chapter{Resumen}
}
{}

\newenvironment{subseccion}[1]
{
    \subsection{#1}
    \begin{adjustwidth}{1.25cm}{}
    \addtolength{\textwidth}{-1.25cm}
    \setlist[itemize]{left=0cm .. 1.25cm}
}
{
    \end{adjustwidth}
    \addtolength{\textwidth}{1.25cm}
}

\addto{\captionsenglish}{\renewcommand{\bibname}{References}}
\addto{\captionsspanish}{\renewcommand{\bibname}{Referencias}}