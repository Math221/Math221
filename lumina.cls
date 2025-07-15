%% lumina.cls
%% Copyright (C) 2024 Matheus Rodrigues Soares
%%
%% Esta classe LaTeX pode ser distribuída e/ou modificada sob as
%% condições da LaTeX Project Public License, versão 1.3c ou posterior.
%% A versão mais recente desta licença está em:
%%   http://www.latex-project.org/lppl.txt
%%
%% Esta classe tem o status de manutenção LPPL "maintained".
%% O mantenedor atual é Matheus Rodrigues Soares.
%%
%% Esta classe é focada na produção de trabalhos acadêmicos brasileiros
%% em conformidade total com as normas ABNT.

\NeedsTeXFormat{LaTeX2e}[2020/10/01]
\ProvidesClass{lumina}[2024/12/28 v1.0.0 Classe LaTeX para trabalhos acadêmicos ABNT]

%% Verificação do motor LaTeX
\RequirePackage{iftex}
\ifXeTeX\else
    \ClassError{lumina}{%
        Esta classe requer XeLaTeX para funcionar corretamente.\MessageBreak
        Por favor, compile com XeLaTeX em vez de LaTeX ou pdfLaTeX%
    }{%
        O Lumina foi projetado para aproveitar os recursos avançados\MessageBreak
        do XeLaTeX, incluindo suporte nativo a fontes OpenType/TrueType\MessageBreak
        e melhor manuseio de Unicode.%
    }
\fi

%% =============================================================================
%% DECLARAÇÃO DE OPÇÕES
%% =============================================================================

%% Opções de fonte
\newif\iflumina@fonte@arial
\newif\iflumina@fonte@times
\lumina@fonte@timestrue % Padrão: Times New Roman

\DeclareOption{fonte=Arial}{
    \lumina@fonte@arialtrue
    \lumina@fonte@timesfalse
}
\DeclareOption{fonte=TimesNewRoman}{
    \lumina@fonte@arialfalse
    \lumina@fonte@timestrue
}

%% Opções de versão de normas ABNT
\newif\iflumina@nbr6024@2003
\newif\iflumina@nbr6024@2012
\lumina@nbr6024@2012true % Padrão: NBR 6024:2012

\DeclareOption{nbr6024=2003}{
    \lumina@nbr6024@2003true
    \lumina@nbr6024@2012false
}
\DeclareOption{nbr6024=2012}{
    \lumina@nbr6024@2003false
    \lumina@nbr6024@2012true
}

%% Opções de layout
\newif\iflumina@layout@thesis
\newif\iflumina@layout@article
\lumina@layout@thesistrue % Padrão: tese/dissertação

\DeclareOption{layout=thesis}{
    \lumina@layout@thesistrue
    \lumina@layout@articlefalse
}
\DeclareOption{layout=article}{
    \lumina@layout@thesisfalse
    \lumina@layout@articletrue
}

%% Opções de estilo de caso para títulos
\newif\iflumina@caso@all
\newif\iflumina@caso@title
\lumina@caso@titlefalse % Padrão: sem alteração de caso

\DeclareOption{estilocaso=all}{
    \lumina@caso@alltrue
    \lumina@caso@titlefalse
}
\DeclareOption{estilocaso=title}{
    \lumina@caso@allfalse
    \lumina@caso@titletrue
}

%% Processar opções não reconhecidas (repassar para memoir)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

%% Processar opções
\ProcessOptions\relax

%% =============================================================================
%% CLASSE BASE
%% =============================================================================

\LoadClass[12pt,a4paper,openright,twoside]{memoir}

%% =============================================================================
%% PACOTES REQUERIDOS
%% =============================================================================

\RequirePackage{xparse}        % Para comandos robustos
\RequirePackage{etoolbox}      % Para patches e hooks
\RequirePackage{xcolor}        % Cores
\RequirePackage{graphicx}      % Imagens
\RequirePackage{geometry}      % Margens
\RequirePackage{setspace}      % Espaçamento
\RequirePackage{indentfirst}   % Indentação do primeiro parágrafo
\RequirePackage{caption}       % Legendas customizadas
\RequirePackage{subcaption}    % Subfiguras
\RequirePackage{booktabs}      % Tabelas profissionais
\RequirePackage{longtable}     % Tabelas longas
\RequirePackage{array}         % Arrays avançados
\RequirePackage{multirow}      % Células de múltiplas linhas
\RequirePackage{rotating}      % Rotação de elementos
\RequirePackage{pdflscape}     % Páginas em paisagem
\RequirePackage{afterpage}     % Controle de quebra de página
\RequirePackage{fancyhdr}      % Cabeçalhos e rodapés
\RequirePackage{titlesec}      % Formatação de títulos
\RequirePackage{titletoc}      % Formatação do sumário
\RequirePackage{enumitem}      % Listas customizadas
\RequirePackage{url}           % URLs
\RequirePackage{hyperref}      % Links e bookmarks
\RequirePackage{bookmark}      % Bookmarks aprimorados

%% Configuração de hyperref
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=blue,
    filecolor=black,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=1,
    unicode=true,
    pdfencoding=auto,
    psdextra
}

%% =============================================================================
%% CONFIGURAÇÃO DE FONTES
%% =============================================================================

\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\iflumina@fonte@arial
    % Configuração para Arial
    \setmainfont{Arial}[
        Ligatures=TeX,
        Scale=1.0
    ]
    \setsansfont{Arial}[
        Ligatures=TeX,
        Scale=1.0
    ]
    \setmonofont{Courier New}[
        Scale=0.9
    ]
    \setmathfont{STIX Two Math}[
        Scale=MatchUppercase
    ]
\else
    % Configuração padrão para Times New Roman
    \setmainfont{Times New Roman}[
        Ligatures=TeX,
        Scale=1.0
    ]
    \setsansfont{Arial}[
        Ligatures=TeX,
        Scale=0.9
    ]
    \setmonofont{Courier New}[
        Scale=0.85
    ]
    \setmathfont{STIX Two Math}[
        Scale=MatchUppercase
    ]
\fi

%% =============================================================================
%% CONFIGURAÇÃO DE PÁGINA E MARGENS
%% =============================================================================

%% Configuração de margens conforme ABNT NBR 14724:2011
\geometry{
    a4paper,
    left=3cm,
    right=2cm,
    top=3cm,
    bottom=2cm,
    bindingoffset=0cm
}

%% Configuração de espaçamento
\OnehalfSpacing % Espaçamento 1,5

%% Indentação de parágrafos
\setlength{\parindent}{1.25cm}

%% =============================================================================
%% CONFIGURAÇÃO DE TÍTULOS E SEÇÕES
%% =============================================================================

%% Configuração baseada na versão da NBR 6024
\iflumina@nbr6024@2012
    % NBR 6024:2012 - Numeração progressiva
    \setcounter{secnumdepth}{5}
    \setcounter{tocdepth}{5}
\else
    % NBR 6024:2003 - Configuração anterior
    \setcounter{secnumdepth}{4}
    \setcounter{tocdepth}{4}
\fi

%% Formatação de títulos de seção
\titleformat{\chapter}[block]
    {\normalfont\bfseries\fontsize{12pt}{14.4pt}\selectfont}
    {\thechapter}{1em}{\MakeUppercase}

\titleformat{\section}
    {\normalfont\bfseries\fontsize{12pt}{14.4pt}\selectfont}
    {\thesection}{1em}{\MakeUppercase}

\titleformat{\subsection}
    {\normalfont\bfseries\fontsize{12pt}{14.4pt}\selectfont}
    {\thesubsection}{1em}{}

\titleformat{\subsubsection}
    {\normalfont\bfseries\fontsize{12pt}{14.4pt}\selectfont}
    {\thesubsubsection}{1em}{}

\titleformat{\paragraph}
    {\normalfont\bfseries\fontsize{12pt}{14.4pt}\selectfont}
    {\theparagraph}{1em}{}

\titleformat{\subparagraph}
    {\normalfont\bfseries\fontsize{12pt}{14.4pt}\selectfont}
    {\thesubparagraph}{1em}{}

%% Espaçamento dos títulos
\titlespacing*{\chapter}{0pt}{0pt}{18pt}
\titlespacing*{\section}{0pt}{18pt}{12pt}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}
\titlespacing*{\paragraph}{0pt}{12pt}{6pt}
\titlespacing*{\subparagraph}{0pt}{12pt}{6pt}

%% =============================================================================
%% ELEMENTOS PRÉ-TEXTUAIS
%% =============================================================================

%% Comando para capa
\newcommand{\lumina@capa}{
    \begin{titlingpage}
        \begin{center}
            \MakeUppercase{\@author}\\[3cm]
            \MakeUppercase{\@title}\\[6cm]
            \@date
        \end{center}
    \end{titlingpage}
}

%% Comando para folha de rosto
\newcommand{\lumina@folhaderosto}{
    \begin{titlingpage}
        \begin{center}
            \MakeUppercase{\@author}\\[3cm]
            \MakeUppercase{\@title}\\[3cm]
            \begin{flushright}
                \begin{minipage}{8cm}
                    \OnehalfSpacing
                    Trabalho apresentado como requisito parcial para...
                \end{minipage}
            \end{flushright}
            \vfill
            \@date
        \end{center}
    \end{titlingpage}
}

%% =============================================================================
%% SUMÁRIO E LISTAS
%% =============================================================================

%% Configuração do sumário
\renewcommand{\contentsname}{SUMÁRIO}
\renewcommand{\listfigurename}{LISTA DE FIGURAS}
\renewcommand{\listtablename}{LISTA DE TABELAS}

%% =============================================================================
%% ELEMENTOS TEXTUAIS E PÓS-TEXTUAIS
%% =============================================================================

%% Configuração de legendas
\captionsetup{
    format=plain,
    labelformat=simple,
    labelsep=endash,
    justification=justified,
    singlelinecheck=false,
    font={small,stretch=1.2}
}

%% =============================================================================
%% CONFIGURAÇÕES FINAIS
%% =============================================================================

%% Configuração de listas
\setlist{
    topsep=0pt,
    partopsep=0pt,
    itemsep=0pt,
    parsep=0pt
}

%% Configuração de citações (preparação para abntex2cite)
\@ifpackageloaded{abntex2cite}{}{
    \AtEndOfClass{
        \@ifpackageloaded{natbib}{}{
            \ClassWarningNoLine{lumina}{%
                Recomenda-se o uso do pacote abntex2cite\MessageBreak
                para citações em conformidade com a ABNT%
            }
        }
    }
}

%% Configurações específicas para artigos
\iflumina@layout@article
    \chapterstyle{article}
    \pagestyle{plain}
    \aliaspagestyle{chapter}{plain}
\fi

%% =============================================================================
%% COMANDOS PÚBLICOS
%% =============================================================================

%% Comando para inserir capa
\newcommand{\capa}{\lumina@capa}

%% Comando para inserir folha de rosto
\newcommand{\folhaderosto}{\lumina@folhaderosto}

%% Comando para configurar dados do trabalho
\newcommand{\instituicao}[1]{\def\@instituicao{#1}}
\newcommand{\programa}[1]{\def\@programa{#1}}
\newcommand{\orientador}[1]{\def\@orientador{#1}}
\newcommand{\coorientador}[1]{\def\@coorientador{#1}}
\newcommand{\local}[1]{\def\@local{#1}}

%% Valores padrão
\def\@instituicao{Nome da Instituição}
\def\@programa{Nome do Programa}
\def\@orientador{Nome do Orientador}
\def\@coorientador{}
\def\@local{Cidade}

%% =============================================================================
%% INFORMAÇÕES DA CLASSE
%% =============================================================================

\newcommand{\luminaversion}{1.0.0}
\newcommand{\luminadate}{2024/12/28}

%% Mensagem de carregamento
\AtEndOfClass{
    \typeout{Classe Lumina \luminaversion\space carregada com sucesso!}
    \typeout{Motor: XeLaTeX}
    \typeout{Fonte: \iflumina@fonte@arial Arial\else Times New Roman\fi}
    \typeout{Norma NBR 6024: \iflumina@nbr6024@2012 2012\else 2003\fi}
    \typeout{Layout: \iflumina@layout@article artigo\else tese/dissertação\fi}
    \typeout{Autor: Matheus Rodrigues Soares}
}

\endinput
%% Fim da classe lumina.cls