# Projeto Lumina - Resumo Completo

## Ficha Técnica do Projeto

- **Nome do Projeto**: Lumina
- **Autor Principal**: Matheus Rodrigues Soares
- **Licença**: LaTeX Project Public License (LPPL) v1.3c
- **Motor Principal**: XeLaTeX
- **Classe Base**: memoir
- **Foco**: Produção de trabalhos acadêmicos (teses, dissertações, artigos, etc.) em total conformidade com as normas da ABNT
- **Status Atual**: Em desenvolvimento (fundação e lógica de opções estabelecidas)
- **Versão**: 1.0.0
- **Data**: 28 de dezembro de 2024

## Descrição Curta

O Lumina é uma classe LaTeX moderna e flexível, criada por Matheus Rodrigues Soares, para a produção de trabalhos acadêmicos brasileiros. Focada em um design limpo, usabilidade e estrita conformidade com as normas ABNT, ela oferece um controle granular sobre fontes, versões de normas e layout do documento, permitindo que o autor produza um trabalho profissional com o mínimo de esforço de formatação.

## Descrição Completa - A Narrativa do Projeto

O Projeto Lumina, idealizado e desenvolvido por Matheus Rodrigues Soares, é uma resposta moderna e sofisticada ao desafio de formatar trabalhos acadêmicos segundo as rigorosas normas da ABNT. Nascido da necessidade de uma ferramenta que combine precisão normativa com excelência tipográfica, o nome 'Lumina' reflete sua missão principal: iluminar e simplificar um processo muitas vezes complexo, permitindo que pesquisadores e estudantes foquem naquilo que realmente importa: seu conteúdo.

Construído sobre a poderosa classe memoir e para o motor XeLaTeX, o Lumina aproveita o que há de mais moderno em tecnologia LaTeX para oferecer suporte nativo a qualquer fonte do sistema (OpenType e TrueType) e um manuseio impecável de caracteres Unicode.

### Principais Forças do Projeto

#### Flexibilidade Inteligente e Granular
Diferente de soluções rígidas, o Lumina foi projetado para se adaptar às diversas exigências do ambiente acadêmico brasileiro. Através de um sistema de opções claro e intuitivo no `\documentclass`, o usuário pode:

#### Escolha da Versão da Norma
- Selecionar qual versão de uma norma específica da ABNT deve ser usada (como `[nbr6024=2003]` ou `[nbr6024=2012]`)
- Garantir conformidade com guias de estilo de diferentes universidades, que podem estar em fases distintas de atualização

#### Seleção de Famílias de Fontes
- Alternar facilmente entre presets de fontes clássicas como Times New Roman e Arial (com a opção `[fonte=Arial]`)
- Atender a requisitos institucionais, sem que o usuário precise se preocupar com a complexa configuração de fontes matemáticas compatíveis
- O Lumina resolve configurações complexas nos bastidores

#### Controle do Estilo do Documento
- Definir aspectos visuais, como a capitalização dos títulos de seção, com opções declarativas (`[estilocaso=all]`)
- Mudar completamente a estrutura do documento para um formato de artigo (`[layout=article]`)

## Estrutura do Projeto Implementada

### Arquivos Principais
- **`lumina.cls`**: Classe principal com toda a lógica e funcionalidades
- **`LICENSE`**: Licença LPPL v1.3c
- **`README.md`**: Documentação principal do projeto
- **`CHANGELOG.md`**: Histórico de mudanças
- **`.gitignore`**: Configuração do Git para arquivos LaTeX

### Documentação
- **`doc/manual-usuario.md`**: Manual completo do usuário
- Estrutura preparada para documentação adicional

### Exemplos Práticos
- **`examples/exemplo-basico.tex`**: Exemplo de tese/dissertação
- **`examples/exemplo-artigo.tex`**: Exemplo de artigo científico
- **`examples/README.md`**: Documentação dos exemplos

### Funcionalidades Implementadas

#### Sistema de Opções Granular
```latex
\documentclass[
    fonte=TimesNewRoman,    % ou Arial
    nbr6024=2012,          % ou 2003
    layout=thesis,         % ou article
    estilocaso=all         % ou title
]{lumina}
```

#### Verificação de Motor LaTeX
- Validação automática do uso do XeLaTeX
- Mensagens de erro claras e educativas
- Orientação para o usuário sobre o motor correto

#### Configuração de Fontes Avançada
- Suporte nativo a OpenType e TrueType
- Configuração automática de fontes matemáticas compatíveis
- Diferentes escalas para fonte mono-espaçada

#### Conformidade ABNT
- Margens conforme NBR 14724:2011
- Formatação de títulos e seções
- Suporte a diferentes versões da NBR 6024
- Espaçamento 1,5 e indentação correta

#### Elementos Pré-textuais
- Comando `\capa` para capa automática
- Comando `\folhaderosto` para folha de rosto
- Configuração de dados do trabalho

## Objetivos Alcançados

### ✅ Fundação Sólida
- Classe base funcional e robusta
- Sistema de opções implementado
- Validação de ambiente
- Conformidade ABNT básica

### ✅ Flexibilidade
- Múltiplas opções de fonte
- Diferentes layouts (tese/artigo)
- Suporte a versões de norma
- Controle de estilo

### ✅ Usabilidade
- Interface simples e intuitiva
- Mensagens de erro claras
- Documentação completa
- Exemplos práticos

### ✅ Qualidade Técnica
- Código bem estruturado
- Comentários em português
- Licença apropriada (LPPL)
- Estrutura de projeto profissional

## Próximos Passos (Roadmap)

### Elementos Pré-textuais Completos
- Folha de aprovação
- Dedicatória
- Agradecimentos
- Epígrafe
- Lista de abreviaturas e siglas

### Elementos Pós-textuais
- Apêndices
- Anexos
- Glossário
- Índice remissivo

### Integração com Bibliografia
- Otimização para abntex2cite
- Templates de citação
- Configuração automática de bibliografia

### Testes e Validação
- Suite de testes automatizados
- Validação em diferentes sistemas
- Testes de compatibilidade

## Distribuição e Licenciamento

O projeto é distribuído sob a licença LPPL (LaTeX Project Public License) v1.3c, o padrão da comunidade TeX. Foi arquitetado desde o início para ser robusto, emitindo erros claros e úteis quando o ambiente de compilação não é o correto.

## Objetivo Final

O objetivo final do Lumina é se tornar a ferramenta de escolha para a comunidade acadêmica brasileira que valoriza tanto o rigor metodológico quanto a qualidade estética e a legibilidade de seus documentos.

---

**Status do Projeto**: ✅ **Fundação Completa e Funcional**

O projeto Lumina está agora com sua fundação sólida estabelecida, pronto para desenvolvimento incremental e uso pela comunidade acadêmica brasileira.

*Desenvolvido por Matheus Rodrigues Soares - Dezembro 2024*