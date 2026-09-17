# Exercism

Personal archive of my [Exercism](https://exercism.org) solutions, synced automatically from exercism.io.

## How it works

A bot (`exercism-solutions-syncer[bot]`) watches my Exercism activity and opens a PR here each time I submit or iterate on a solution. `.github/workflows/automerge-exercism.yml` auto-merges (squash) any PR opened by that bot, so this repo stays in sync without manual intervention. Everything under `solutions/` is bot-managed; anything else (like this README) is added by hand via a regular reviewed PR.

## Structure

```
solutions/<language>/<exercise-slug>/<iteration>/<solution file(s)>
```

Each exercise gets its own directory per language, and each submitted attempt is kept as a numbered `iteration` subdirectory (`1`, `2`, `3`, ...) rather than overwriting the previous one. Example:

```
solutions/python/armstrong-numbers/1/armstrong_numbers.py
solutions/python/armstrong-numbers/2/armstrong_numbers.py
```

Some exercises also include supporting data files (e.g. test fixtures) alongside the solution.

## Languages

The set of languages and exercises grows as I work through more problems, so rather than list them here (and let the list go stale), run:

```
ls solutions/
```

for the current, authoritative list.
