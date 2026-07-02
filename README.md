# homebrew-tap

WarpStream's tap for Homebrew

## Tapping the repository

To tap this repository, run:

```bash
brew tap warpstreamlabs/homebrew-tap
```

## WarpStream CLI

To install the `WarpStream` CLI locally on Linux or macOS, simply install it via this tap:

```bash
brew install warpstreamlabs/homebrew-tap/warpstream
```

## Development

To debug formulas locally, use these commands:

```bash
brew install --verbose --build-from-source ./Formula/warpstream.rb # install from local source
brew audit --strict warpstream # lint the formula
```
