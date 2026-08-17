# paulinevos/homebrew-tap

Homebrew formulae for [badgehub-scaffolder](https://github.com/paulinevos/badgehub-scaffolder).

```
brew install paulinevos/tap/badgehub
```

## badgehub

`bh`, a command line tool for scaffolding and managing
[BadgeHub](https://badgehub.eu) apps.

The formula installs a prebuilt binary for macOS and Linux, on both arm64 and
x86_64.

## How this stays up to date

`Formula/badgehub.rb` is written by the release workflow in
badgehub-scaffolder: tagging `v*` there cross-builds the archives, uploads them
to the GitHub release, and opens a pull request here with the new version and
checksums. Editing the formula by hand works, but the next release overwrites
it.

Pull requests are checked by `brew audit --strict`, `brew install` and
`brew test` before merging.
