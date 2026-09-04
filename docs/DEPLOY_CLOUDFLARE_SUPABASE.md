# Deploy Production

## Supabase

1. Execute supabase/schema.sql
2. Create Storage buckets:

- comprovantes
- pdfs

3. Configure Auth providers.

## Flutter Web

Build:

```
flutter build web --release
```

Deploy the generated build/web folder to Cloudflare Pages.

## Environment

Do not commit service_role keys. Use only the anon key in the client with RLS enabled.
