# Switch php versions

## macOS w. homebrew
1. Install desired php version:
```bash
$ brew install php@8.3
```

2. Unlink current active php version:
```bash
$ brew unlink php@8.4
```

3. Link desired php version:
```bash
$ brew link --force --overwrite php@8.3
```

* check installed versions:
```bash
$ brew ls --versions | grep '^php[ @]'
```