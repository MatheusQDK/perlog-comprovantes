# Finalização V1 - Perlog Comprovantes

## Fluxo previsto

1. Usuário faz login pelo Supabase Auth.
2. Perfil é consultado em profiles.
3. MASTER administra usuários.
4. Funcionário cria lote.
5. Scanner captura comprovantes.
6. Imagens são enviadas ao Storage.
7. Registros são salvos em comprovantes.
8. Lote é fechado e PDF A4 é gerado com 12 comprovantes por página.

## Pendências que exigem ambiente real

- Executar SQL no projeto Supabase.
- Criar buckets Storage.
- Configurar chaves de ambiente.
- Testar câmera em aparelho físico.
- Gerar build Flutter Web/Android.
- Publicar no Cloudflare Pages.
