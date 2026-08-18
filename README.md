# Atualizador de Planilha via PDF

Sistema que lê um PDF e atualiza uma planilha Excel (.xlsx) com os valores encontrados,
**sem mexer em mais nada**: formatação, cores, fontes e fórmulas não relacionadas ficam intactas.

## Como usar

1. Dê dois cliques em **atualizador.html** (abre no Chrome ou Edge).
2. Escreva seu nome no campo "Quem está atualizando" (fica registrado no histórico).
3. Escolha o **PDF** e a **planilha**.
4. Clique em **Analisar PDF e propor mudanças** — o sistema mostra o que encontrou,
   na ordem do PDF, comparando valor atual × valor novo.
5. Revise: desmarque o que não quiser (clicando em USAR/IGNORAR) e corrija valores se precisar.
6. Clique em **Aplicar selecionadas e gravar na planilha** — no Chrome/Edge o sistema grava
   direto no arquivo original, sem criar planilha nova.

## Recursos

- **Histórico com pastas**: cada planilha tem sua pasta no histórico (ex.: PCP), mostrando
  data, hora, quem atualizou, qual PDF foi usado e cada célula alterada (antes → depois).
- **Filtros no histórico**: busca por texto, pasta e período de datas.
- **Salvamento automático**: se a página recarregar ou travar, os arquivos e as mudanças
  pendentes são restaurados sozinhos.
- **Formatação preservada**: o sistema altera somente o valor das células aprovadas dentro
  do arquivo .xlsx — nenhum outro byte da planilha é tocado.

## Sincronização com o GitHub

- **sincronizacao-automatica.bat** — deixe aberto (pode minimizar): a cada minuto, qualquer
  mudança na pasta é enviada sozinha para o GitHub.
- **enviar-github.bat** — envia tudo agora, com um clique.

## Arquivos

| Arquivo | O que é |
|---|---|
| `atualizador.html` | O sistema (abre no navegador, não precisa instalar nada) |
| `sincronizacao-automatica.bat` | Sincronização automática com o GitHub |
| `enviar-github.bat` | Envio manual para o GitHub |
| `auto-sync.ps1` | Script interno usado pela sincronização automática |
