# Lumina

[![License: LPPL](https://img.shields.io/badge/License-LPPL%20v1.3c-blue.svg)](https://www.latex-project.org/lppl.txt)
[![LaTeX](https://img.shields.io/badge/LaTeX-XeLaTeX-orange.svg)](https://www.latex-project.org/)
[![ABNT](https://img.shields.io/badge/Normas-ABNT-green.svg)](https://www.abnt.org.br/)

Uma classe LaTeX moderna e flexível para produção de trabalhos acadêmicos brasileiros em conformidade com as normas ABNT.

## 📖 Sobre o Projeto

O **Lumina** é uma classe LaTeX desenvolvida por Matheus Rodrigues Soares, focada em um design limpo, usabilidade excepcional e estrita conformidade com as normas da ABNT. O nome 'Lumina' reflete sua missão principal: iluminar e simplificar o processo de formatação acadêmica, permitindo que pesquisadores e estudantes foquem no que realmente importa: seu conteúdo.

### 🎯 Características Principais

- **📋 Conformidade ABNT**: Total aderência às normas brasileiras para trabalhos acadêmicos
- **🎨 Design Moderno**: Interface limpa e profissional
- **⚙️ Flexibilidade Granular**: Controle preciso sobre todos os aspectos do documento
- **🔤 Suporte Unicode**: Manuseio impecável de caracteres através do XeLaTeX
- **📚 Multi-versão**: Suporte a diferentes versões das normas ABNT

## 🚀 Recursos Avançados

### Controle de Versões de Normas
```latex
\documentclass[nbr6024=2012]{lumina}  % NBR 6024:2012
\documentclass[nbr6024=2003]{lumina}  % NBR 6024:2003
```

### Seleção de Fontes
```latex
\documentclass[fonte=Arial]{lumina}      % Arial
\documentclass[fonte=TimesNewRoman]{lumina}  % Times New Roman (padrão)
```

### Estilos de Documento
```latex
\documentclass[layout=article]{lumina}     % Formato de artigo
\documentclass[estilocaso=all]{lumina}     % Controle de capitalização
```

## 📋 Especificações Técnicas

- **Motor**: XeLaTeX
- **Classe Base**: memoir
- **Licença**: LaTeX Project Public License (LPPL) v1.3c
- **Tipos de Documento**: Teses, dissertações, monografias, artigos
- **Compatibilidade**: OpenType e TrueType fonts

## 🛠️ Instalação

### Requisitos
- Distribuição LaTeX completa (TeX Live recomendado)
- XeLaTeX
- Pacotes memoir e dependências

### Instalação Manual
```bash
# Clone o repositório
git clone https://github.com/Math221/lumina.git

# Copie os arquivos para seu diretório local do LaTeX
cp lumina.cls /path/to/texmf/tex/latex/lumina/
```

## 📝 Uso Básico

```latex
\documentclass[
    fonte=TimesNewRoman,
    nbr6024=2012,
    layout=thesis
]{lumina}

\usepackage[utf8]{inputenc}
\usepackage[brazil]{babel}

\title{Título do Trabalho}
\author{Nome do Autor}
\date{\today}

\begin{document}
\maketitle

% Seu conteúdo aqui

\end{document}
```

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor:

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está licenciado sob a LaTeX Project Public License (LPPL) v1.3c - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 👤 Autor

**Matheus Rodrigues Soares**
- Email: matheussoares.ivp@gmail.com
- GitHub: [@Math221](https://github.com/Math221)

## 🙏 Agradecimentos

- Comunidade LaTeX brasileira
- Desenvolvedores da classe memoir
- Equipe do XeLaTeX

---

*Iluminando o caminho para trabalhos acadêmicos de excelência.*
