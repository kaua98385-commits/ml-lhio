# MERIDIANO (nome provisório) — versão parcial das Etapas 1-3

## Como executar
1. Instale o Node 18+ (https://nodejs.org). Não há dependências para instalar.
2. Windows: dê dois cliques em `iniciar.bat`. Mac/Linux: `./iniciar.sh`. Ou: `node tools/serve.mjs` e abra http://localhost:8080
   (não abra o index.html direto: módulos ES e dados exigem servidor local).
3. Testes unitários: `npm test`. Teste de interface (precisa de Playwright): `npm run test:ui`.

## Estado
- Os dados reais (Natural Earth) já estão processados em `data/geo/` — o jogo roda offline.
- `tools/build-geodata.mjs` regenera os dados a partir do Natural Earth (defina NE_DIR).
- Testes: 84 unitários (`npm test`), 30 verificações de UI do jogo (`npm run test:ui`) e 54 do fluxo de autenticação (`npm run test:auth-ui`).
- Documentação em `docs/` (ARQUITETURA, DADOS, ETAPA-1/2/3). Limitações honestas em `docs/DADOS.md`.
- `tools/fetch-geodata.mjs` baixa o Natural Earth via git (não testado fora do ambiente de desenvolvimento).
- v0.4.0: sistema de ideologias (86 ideologias, híbridas, transições, catálogo e seção no painel do país). Veja docs/IDEOLOGIAS.md (inclui o que ainda falta, principalmente imagens reais de vários símbolos).
- v0.5.0: login e cadastro reais (Supabase Auth). **Sem configuração o jogo roda em modo local, como antes.** Para ativar contas, veja docs/AUTENTICACAO.md (variáveis `SUPABASE_URL` e `SUPABASE_ANON_KEY`, nunca a chave secreta).
- Ainda não há sistemas dinâmicos: o tempo corre, mas nada muda (política/economia vêm nas próximas etapas).

## v0.7.0 — Fundação do sistema de personagens
Contratos em `src/characters/` (catálogos, ossos, morph targets, animações, salvamento v3, contrato do
visualizador). Documentação e limites: `docs/PERSONAGENS.md`, `docs/AUDITORIA-MODULAR.md`,
`docs/ESPECIFICACAO-PERSONAGENS-3D.md`. Sem Three.js nem GLB ainda; o visualizador procedural continua funcionando.

## v0.8.0 — Componentes de personagem (cabeça, cabelo, rosto, barba)
O editor aceita componentes GLB por slot, validados e carregados sob demanda, com o procedural como fallback.
Veja `docs/ADICIONAR-MODELOS.md` e `docs/PERSONAGENS.md`. Nenhum modelo realista acompanha o projeto.
