-- PERLOG COMPROVANTES - BANCO SUPABASE

create table if not exists public.profiles (
 id uuid primary key references auth.users(id) on delete cascade,
 nome text not null,
 email text,
 perfil text default 'FUNCIONARIO',
 aprovado boolean default false,
 ativo boolean default true,
 criado_em timestamp default now()
);

create table if not exists public.lotes (
 id uuid primary key default gen_random_uuid(),
 usuario_id uuid references public.profiles(id),
 quantidade integer default 0,
 status text default 'ABERTO',
 pdf_url text,
 criado_em timestamp default now()
);

create table if not exists public.comprovantes (
 id uuid primary key default gen_random_uuid(),
 lote_id uuid references public.lotes(id),
 usuario_id uuid references public.profiles(id),
 imagem_url text not null,
 criado_em timestamp default now()
);

alter table public.profiles enable row level security;
alter table public.lotes enable row level security;
alter table public.comprovantes enable row level security;

-- Funcionário vê apenas seus próprios dados
create policy "usuario ve proprio perfil"
on public.profiles for select
using (auth.uid() = id);

create policy "usuario ve seus lotes"
on public.lotes for select
using (auth.uid() = usuario_id);

create policy "usuario cria comprovante"
on public.comprovantes for insert
with check (auth.uid() = usuario_id);

-- O MASTER será liberado via função/perfil posteriormente
