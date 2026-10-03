# Digestiv

Track your digestion in two parts: a **day log** (food, gut helpers, stress and symptoms logged as they happen, saved as you go and submitted before bed) and a **morning check-in** (sleep and what you did before your bathroom visit, then the result). Each day log pairs with the next morning, and the Patterns tab shows which foods, habits and symptoms line up with better and worse mornings.

Live app: https://izzybf.github.io/digestiv/ (open on your phone and use "Add to Home Screen").

- All check-ins stay on your device (browser storage). Use Settings → Export to back up.
- Daily reminder: Settings → Add to calendar creates a repeating calendar alert.

## Editing
Edit `src/app-body.html`, then run `sh build.sh` to regenerate `index.html`. Bump `VERSION` in `sw.js` so installed copies pick up the change.

See `PLAN.md` for the design notes. `src/themes/` holds two unused alternative looks (Tidepool and Sorbet).
