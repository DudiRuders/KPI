# KPI Dashboard (mapa) — Metabase + SQL

Repo pokazuje koncepcję raportowania KPI dla marketingu/zarządu.
Nie zawiera danych produkcyjnych ani sekretów.

## Problem
- dane rozproszone w wielu źródłach
- ręczne raporty są wolne i podatne na błędy
- brak jednego miejsca do KPI i trendów

## Cel
Stworzyć jedno źródło prawdy:
- model danych (PostgreSQL)
- KPI (SQL: widoki / zapytania)
- dashboardy (Metabase)
- alerty i raporty cykliczne

## Architektura (high level)
1. Dane trafiają do PostgreSQL (ETL / integracje)
2. Widoki SQL pod KPI
3. Metabase dashboardy:
   - kampanie, promocje, sprzedaż, trendy
4. Alerty (np. spadek KPI, brak danych)

## Technologie
- PostgreSQL
- SQL
- Metabase

## Bezpieczeństwo
Repo zawiera tylko mapę i opis.
