# Harbor for Homebrew

[Harbor](https://harborppm.com/ai) in the terminal: a full-screen app with your whole harbor, and commands for scripts and agents.

```sh
brew install 7jb28c9mtk-web/harbor/harbor
harbor            # the full-screen app (signs you in the first time)
harbor signup     # new to Harbor? make an account first
```

Works on macOS and Linux. Homebrew installs Node for it. To try Harbor with nothing installed at all: `ssh try.harborppm.com`.

The formula is written from the published npm package (`@harborppm/cli`) each time a new version comes out, so `brew upgrade` keeps up.
