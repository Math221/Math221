# Manual do Usuário - Classe Lumina

## Índice

1. [Introdução](#introdução)
2. [Instalação](#instalação)
3. [Configuração Básica](#configuração-básica)
4. [Opções da Classe](#opções-da-classe)
5. [Elementos do Documento](#elementos-do-documento)
6. [Exemplos Práticos](#exemplos-práticos)
7. [Solução de Problemas](#solução-de-problemas)

## Introdução

A classe Lumina é uma ferramenta moderna para produção de trabalhos acadêmicos brasileiros em total conformidade com as normas ABNT. Este manual fornece instruções detalhadas para utilização da classe.

### Características Principais

- **Conformidade ABNT**: Implementação rigorosa das normas brasileiras
- **Flexibilidade**: Sistema granular de opções
- **Modernidade**: Suporte completo a Unicode via XeLaTeX
- **Facilidade**: Interface simples e intuitiva

## Instalação

### Requisitos

- **LaTeX**: Distribuição completa (TeX Live recomendado)
- **Motor**: XeLaTeX (obrigatório)
- **Fontes**: Times New Roman, Arial (instaladas no sistema)

### Instalação Local

1. Faça download dos arquivos da classe
2. Copie `lumina.cls` para seu diretório de trabalho
3. Compile com XeLaTeX

### Instalação Global

```bash
# Copie para o diretório local do usuário
cp lumina.cls ~/texmf/tex/latex/lumina/

# Atualize a base de dados do LaTeX
texhash ~/texmf
```

## Configuração Básica

### Estrutura Mínima

```latex
\documentclass{lumina}

\title{Título do Trabalho}
\author{Nome do Autor}
\date{\today}

\begin{document}
\maketitle
% Conteúdo aqui
\end{document}
```

### Configuração Completa

```latex
\documentclass[
    fonte=TimesNewRoman,
    nbr6024=2012,
    layout=thesis
]{lumina}

\usepackage[brazil]{babel}

% Dados do trabalho
\title{Título Completo do Trabalho}
\author{Nome Completo do Autor}
\date{2024}

\instituicao{Nome da Universidade}
\programa{Programa de Pós-Graduação}
\orientador{Prof. Dr. Nome do Orientador}
\local{Cidade}

\begin{document}
\capa
\folhaderosto
\tableofcontents

% Conteúdo aqui

\end{document}
```

## Opções da Classe

### Fontes

| Opção | Descrição | Uso |
|-------|-----------|-----|
| `fonte=TimesNewRoman` | Times New Roman (padrão) | `\documentclass[fonte=TimesNewRoman]{lumina}` |
| `fonte=Arial` | Arial | `\documentclass[fonte=Arial]{lumina}` |

### Normas ABNT

| Opção | Descrição | Diferenças |
|-------|-----------|------------|
| `nbr6024=2012` | NBR 6024:2012 (padrão) | 5 níveis de seção |
| `nbr6024=2003` | NBR 6024:2003 | 4 níveis de seção |

### Layout

| Opção | Descrição | Aplicação |
|-------|-----------|-----------|
| `layout=thesis` | Tese/Dissertação (padrão) | Trabalhos longos |
| `layout=article` | Artigo | Trabalhos curtos |

### Estilo de Caso

| Opção | Descrição | Efeito |
|-------|-----------|--------|
| `estilocaso=all` | Maiúsculas em todos os títulos | TODAS AS SEÇÕES |
| `estilocaso=title` | Maiúsculas apenas em títulos principais | Títulos Principais |

## Elementos do Documento

### Elementos Pré-textuais

```latex
\capa                 % Capa do trabalho
\folhaderosto        % Folha de rosto
\tableofcontents     % Sumário
\listoffigures       % Lista de figuras
\listoftables        % Lista de tabelas
```

### Comandos de Configuração

```latex
\instituicao{Nome da Instituição}
\programa{Nome do Programa}
\orientador{Nome do Orientador}
\coorientador{Nome do Coorientador}  % Opcional
\local{Cidade}
```

### Estrutura de Seções

```latex
\chapter{Capítulo}
\section{Seção}
\subsection{Subseção}
\subsubsection{Subsubseção}
\paragraph{Parágrafo}
\subparagraph{Subparágrafo}
```

## Exemplos Práticos

### Exemplo 1: Dissertação com Times New Roman

```latex
\documentclass[
    fonte=TimesNewRoman,
    nbr6024=2012,
    layout=thesis
]{lumina}

\usepackage[brazil]{babel}
\usepackage{graphicx}

\title{Aplicações de Machine Learning em Física de Partículas}
\author{João Silva Santos}
\date{2024}

\instituicao{Universidade Federal de Minas Gerais}
\programa{Programa de Pós-Graduação em Física}
\orientador{Prof. Dr. Maria da Silva}

\begin{document}
\capa
\folhaderosto
\tableofcontents

\chapter{Introdução}
% Conteúdo...

\end{document}
```

### Exemplo 2: Artigo com Arial

```latex
\documentclass[
    fonte=Arial,
    layout=article,
    nbr6024=2012
]{lumina}

\usepackage[brazil]{babel}
\usepackage{amsmath}

\title{Análise Estatística de Dados Experimentais}
\author{Ana Paula Costa}
\date{Dezembro 2024}

\begin{document}
\maketitle

\begin{abstract}
Resumo do artigo...
\end{abstract}

\section{Introdução}
% Conteúdo...

\end{document}
```

## Solução de Problemas

### Erro: "Esta classe requer XeLaTeX"

**Problema**: Tentativa de compilação com LaTeX ou pdfLaTeX.

**Solução**: Compile com XeLaTeX:
```bash
xelatex documento.tex
```

### Erro: Fonte não encontrada

**Problema**: Fontes Times New Roman ou Arial não instaladas.

**Solução**: 
- Windows: Fontes geralmente já instaladas
- Linux: Instale as fontes Microsoft
- macOS: Fontes geralmente já instaladas

### Formatação incorreta

**Problema**: Documento não segue padrão ABNT.

**Verificações**:
1. Confirme as opções da classe
2. Verifique se está usando XeLaTeX
3. Consulte os exemplos fornecidos

### Performance lenta

**Problema**: Compilação demorada.

**Soluções**:
1. Use compilação incremental
2. Remova pacotes desnecessários
3. Otimize imagens (formato e tamanho)

## Suporte

Para suporte e relatório de bugs:
- **GitHub**: [github.com/Math221/lumina](https://github.com/Math221/lumina)
- **Email**: matheussoares.ivp@gmail.com

---

*Manual do Usuário - Classe Lumina v1.0.0*