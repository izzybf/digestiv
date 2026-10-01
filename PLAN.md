# Digestiv: plan

## What it is
A small app you open once a day, ideally in the morning, to log how your gut feels
and what might have caused it. After a week or two it shows which foods, habits and
stress levels line up with your better and worse days.

## The daily check-in (about 1 minute)
1. **Gut today**: overall feeling (1 to 5), bloating, cramping or pain, gas,
   reflux, nausea (none / mild / moderate / strong), number of bowel movements,
   Bristol stool type (1 to 7) and urgency.
2. **Yesterday**: what you ate and drank (free text plus quick tags such as dairy,
   gluten, beans, onion or garlic, spicy, fried, alcohol, coffee, ate late),
   glasses of water, stress level.
3. **Last night and this morning**: sleep hours and quality, morning stress, and
   morning tags (coffee, breakfast, exercise, walk, rushed, commute, meditation,
   supplements, medication).
4. **Other**: period, notes.

You can backfill or edit any past day.

## Patterns
- A 30 day chart of your gut score.
- For each tag: your average gut score on days after it versus days without it,
  shown once a tag has at least 3 days on each side.
- Stress and sleep compared the same way.
- These are associations, not proof. They are a good thing to bring to a doctor.

## Daily reminder
A web app can't reliably fire a notification at a set time without a server. So:
- **Main reminder**: one tap adds a daily repeating event with an alert to your
  phone's calendar (works on iPhone and Android, no account needed).
- **Backup**: when the app is installed, its icon shows a badge until today's
  check-in is done, and the app opens on the check-in if it's missing.
- **Later, if wanted**: real push notifications need a small server (for example a
  free Cloudflare Worker). Worth adding only if the calendar reminder isn't enough.

## Platform
An installable web app (PWA): one HTML file, a manifest and a service worker so it
works offline and can be added to the home screen. Data stays on your phone
(browser storage), with JSON and CSV export and JSON import for backups.

To install it on your phone it needs to be hosted on an https address. Easiest free
options: GitHub Pages (needs a repository) or Netlify Drop (drag the folder in).

## Files
- `app/index.html`: the app
- `app/manifest.webmanifest`, `app/sw.js`, `app/icon-*.png`, `app/icon.svg`
- `src/app-body.html`: the app's page content (shared by the app and the preview)
- `build.sh`: rebuilds `app/index.html` from `src/`
