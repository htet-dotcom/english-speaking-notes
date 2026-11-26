-- English Speaking Notes — Supabase setup
-- Supabase → SQL Editor → New query → paste all of this → Run
-- Safe to run more than once.

-- 1) Notes (each user sees only their own rows)
create table if not exists public.notes (
  user_id    uuid   not null default auth.uid() references auth.users(id) on delete cascade,
  id         text   not null,
  title      text   not null default '',
  body       text   not null default '',
  category   text   not null default 'General',
  date       bigint not null default 0,
  updated_at timestamptz not null default now(),
  primary key (user_id, id)
);
alter table public.notes enable row level security;
drop policy if exists "notes: own rows" on public.notes;
create policy "notes: own rows" on public.notes
  for all to authenticated
  using (user_id = auth.uid())
  with check (user_id = auth.uid());
grant select, insert, update, delete on public.notes to authenticated;

-- 2) Per-user settings (voice, model, ElevenLabs key) so they follow the account
create table if not exists public.user_settings (
  user_id    uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  tts        jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.user_settings enable row level security;
drop policy if exists "settings: own row" on public.user_settings;
create policy "settings: own row" on public.user_settings
  for all to authenticated
  using (user_id = auth.uid())
  with check (user_id = auth.uid());
grant select, insert, update, delete on public.user_settings to authenticated;

-- 3) Private bucket for the saved voice clips: <user id>/<hash>.mp3
insert into storage.buckets (id, name, public)
values ('voices', 'voices', false)
on conflict (id) do nothing;

drop policy if exists "voices: read own"   on storage.objects;
drop policy if exists "voices: add own"    on storage.objects;
drop policy if exists "voices: update own" on storage.objects;
drop policy if exists "voices: delete own" on storage.objects;

create policy "voices: read own" on storage.objects
  for select to authenticated
  using (bucket_id = 'voices' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "voices: add own" on storage.objects
  for insert to authenticated
  with check (bucket_id = 'voices' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "voices: update own" on storage.objects
  for update to authenticated
  using (bucket_id = 'voices' and (storage.foldername(name))[1] = auth.uid()::text)
  with check (bucket_id = 'voices' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "voices: delete own" on storage.objects
  for delete to authenticated
  using (bucket_id = 'voices' and (storage.foldername(name))[1] = auth.uid()::text);
