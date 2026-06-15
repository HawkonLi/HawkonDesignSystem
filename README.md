# Hawkon Personal Design System

A personal brand & UI system spanning résumé, web, slides, docs, and product — across **iOS and web**.
Design principle: **an engineer's logic, a designer's eye**（工程师的理性 · 设计师的审美）.

- **Primary** — Airforce Blue `#1B4965` (a nod to air-force service: steady, disciplined, reliable)
- **Accent** — Sky Blue `#5FA8D3` (upward, open, forward-looking)
- **Ember** — `#E07A3F`, a warm horizon accent used sparingly (≤5%)
- Full ramps + light/dark semantic tokens, 4pt/8pt spacing, sRGB values (P3-ready), WCAG-checked.

## What's in here
| File | Use |
|---|---|
| `tokens.json` | W3C design-tokens source of truth (primitives + semantic light/dark + scale) |
| `css/tokens.css` | CSS custom properties; dark via `[data-theme="dark"]` or OS preference |
| `tailwind.preset.js` | Tailwind preset (colors, spacing, radius, shadows, fonts) |
| `swift/HawkonTokens.swift` | SwiftUI tokens with auto light/dark semantic colors |

## Quick start
**Web (CSS):** import `css/tokens.css`, then use `var(--hk-accent-primary)`, `var(--hk-bg-surface)`, etc. Toggle dark by setting `document.documentElement.dataset.theme = 'dark'`.

**Tailwind:** `presets: [require('./tailwind.preset.js')]`, then `bg-surface text-text-primary border-border-default`, `bg-accent text-on-accent`.

**SwiftUI:** drop in `HawkonTokens.swift`, then `HKTheme.accentPrimary`, `HKTheme.bgSurface` (auto light/dark), `HKSpace.s4`, `HKRadius.md`.

## Typography
- **Latin / numerals:** Inter — Display 44/52, H1 32/40, H2 24/32, H3 20/28, Title 18/26, Body 14/22, Caption 12/18, Overline 11/16 (+8% uppercase).
- **中文:** Noto Sans SC (思源黑体) — 标题 30/44 Bold, 22/34 Medium; 正文 15/26.
- **Serif accent:** Noto Serif SC (思源宋体) — 引言 18/32.
- **Code:** JetBrains Mono / Roboto Mono — 13/20.

## Spacing & radius
Space (px): 0·4·8·12·16·24·32·48·64·96. Radius: sm 6 / md 10 / lg 16 / xl 24 / full 999.

## Elevation
Cool-toned shadows (`#121F30` low-alpha): e1 subtle → e4 overlay. See `--hk-elevation-*` / Tailwind `shadow-e*`.

## Brand voice
Precise, calm, confident; technical without being cold. Generous whitespace, restrained color, one accent at a time. Bilingual: Chinese primary, key technical terms in English.

---
Maintained by Hawkon. The canonical Figma file holds matching Variables & Styles.
