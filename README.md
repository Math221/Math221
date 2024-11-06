# Modelo IFPR-ABNT

Template LaTeX para documentos acadêmicos do Instituto Federal do Paraná (IFPR), seguindo as normas ABNT.

## Estrutura do Repositório

```
.
├── docs/                    # Documentação
│   ├── manual.pdf          # Manual do usuário em PDF
│   └── manual.md           # Manual do usuário em Markdown
├── exemplos/               # Exemplos de documentos
│   ├── artigo/            # Exemplo de artigo
│   ├── relatorio/         # Exemplo de relatório
│   ├── resumo/            # Exemplo de resumo
│   └── tcc/               # Exemplo de TCC
├── scripts/               # Scripts de automação
├── src/                   # Arquivos fonte do template
│   └── ifpr-abnt.cls     # Classe principal
├── RELATORIO.md          # Relatório técnico do projeto
└── LICENSE               # Licença do projeto
```

## Instalação

1. Clone este repositório:
```bash
git clone https://github.com/seu-usuario/ifpr-abnt.git
```

2. Copie o arquivo `src/ifpr-abnt.cls` para o diretório do seu projeto LaTeX.

3. No seu documento, use a classe com:
```latex
\documentclass{ifpr-abnt}
```

## Uso Rápido

1. Escolha um dos exemplos da pasta `exemplos/` como base
2. Copie os arquivos para seu diretório de trabalho
3. Modifique conforme suas necessidades
4. Compile com pdflatex ou latexmk

## Funcionalidades

- Formatação ABNT automática
- Estilos personalizados para o IFPR
- Suporte a diferentes tipos de documentos
- Compatível com Overleaf

## Documentação

Consulte a pasta `docs/` para o manual completo de utilização.

## Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

## Contribuição

Contribuições são bem-vindas! Por favor, leia o guia de contribuição antes de submeter um pull request.
