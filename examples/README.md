# Exemplos - Classe Lumina

Esta pasta contém exemplos práticos de uso da classe Lumina para diferentes tipos de documentos acadêmicos.

## Arquivos Disponíveis

### `exemplo-basico.tex`
Exemplo básico de uma dissertação/tese usando as configurações padrão da classe Lumina.

**Características:**
- Fonte: Times New Roman
- Layout: Tese/Dissertação
- Norma: NBR 6024:2012
- Elementos: Capa, folha de rosto, sumário, capítulos

**Compilação:**
```bash
xelatex exemplo-basico.tex
```

### `exemplo-artigo.tex`
Exemplo de um artigo científico usando layout específico para artigos.

**Características:**
- Fonte: Arial
- Layout: Artigo
- Norma: NBR 6024:2012
- Elementos: Título, abstract, seções, referências

**Compilação:**
```bash
xelatex exemplo-artigo.tex
```

## Como Usar os Exemplos

1. **Pré-requisitos:**
   - XeLaTeX instalado
   - Classe Lumina (`lumina.cls`) no diretório ou PATH do LaTeX
   - Fontes Times New Roman e Arial instaladas

2. **Compilação:**
   ```bash
   # Navegue até a pasta examples
   cd examples
   
   # Compile o exemplo desejado
   xelatex exemplo-basico.tex
   
   # Para bibliografia (se aplicável)
   bibtex exemplo-basico
   xelatex exemplo-basico.tex
   xelatex exemplo-basico.tex
   ```

3. **Personalização:**
   - Copie o exemplo mais próximo ao seu tipo de documento
   - Modifique os dados do trabalho (título, autor, etc.)
   - Ajuste as opções da classe conforme necessário
   - Substitua o conteúdo de exemplo pelo seu conteúdo

## Estrutura dos Exemplos

Todos os exemplos seguem esta estrutura básica:

```latex
\documentclass[opções]{lumina}

% Pacotes adicionais
\usepackage{...}

% Dados do documento
\title{...}
\author{...}
% ... outros dados

\begin{document}
% Elementos pré-textuais
% Conteúdo principal
% Elementos pós-textuais
\end{document}
```

## Opções Disponíveis

### Fontes
- `fonte=TimesNewRoman` (padrão)
- `fonte=Arial`

### Layout
- `layout=thesis` (padrão - teses/dissertações)
- `layout=article` (artigos)

### Normas ABNT
- `nbr6024=2012` (padrão)
- `nbr6024=2003`

### Estilo de Caso
- `estilocaso=all` (maiúsculas em todos os títulos)
- `estilocaso=title` (maiúsculas apenas em títulos principais)

## Dicas

1. **Compilação**: Sempre use XeLaTeX, não LaTeX ou pdfLaTeX
2. **Fontes**: Certifique-se de que as fontes estão instaladas no sistema
3. **Encoding**: Use UTF-8 para caracteres acentuados
4. **Bibliografia**: Para citações ABNT, recomenda-se o pacote `abntex2cite`

## Problemas Comuns

- **Erro de fonte**: Instale Times New Roman e Arial
- **Erro de motor**: Use XeLaTeX em vez de LaTeX/pdfLaTeX
- **Formatação incorreta**: Verifique as opções da classe

Para mais informações, consulte o manual do usuário em `doc/manual-usuario.md`.

---

*Exemplos da Classe Lumina - Desenvolvida por Matheus Rodrigues Soares*