# homebrew-local

Homebrew tap for [`mailtrap-local`](https://github.com/mailtrap/mailtrap-local), a single-binary local email sandbox + catcher for individual developers.

## Install

```sh
brew tap mailtrap/local
brew install mailtrap-local
```

While the tap repo is private, point `brew tap` at the SSH URL so it picks up your GitHub credentials:

```sh
brew tap mailtrap/local git@github.com:mailtrap/homebrew-local.git
brew install mailtrap-local
```

After install, run as a background service:

```sh
brew services start mailtrap-local
```

Then open <http://127.0.0.1:3550> for the inbox and point your app's SMTP client at `127.0.0.1:3535`.

## How this tap is updated

Every tagged release of `mailtrap-local` rewrites `Formula/mailtrap-local.rb` from the `.goreleaser.yaml` `brews:` block in the upstream repo. The `url` (pointing to a GitHub Release tarball) and `sha256` are filled in automatically. Don't edit `Formula/mailtrap-local.rb` by hand — your changes will be clobbered on the next release.

## License

MIT.
