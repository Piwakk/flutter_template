# flutter_template

Template for a Flutter project, with CI and CD.

## How to use

- Replace `com.example.flutter_template` with your application ID.
- Add extra platforms with `flutter create .`.
- Generate a [Personal Access Token](https://github.com/settings/tokens) for the repo, with read and
  write access to commit statuses, contents, and deployments, and add it to your repository secrets
  as `GH_TOKEN`.

## CI (`.github/workflows/ci.yml`)

- Runs `flutter analyze`, `dart format` and `flutter test`.
- The linter is customizable with `analysis_options.yaml`.

## CD (`.github/workflows/release.yml`)

- Uses [semantic-release](https://semantic-release.gitbook.io/semantic-release/) with plugins
  [@semantic-release/exec](https://github.com/semantic-release/exec),
  [@semantic-release/git](https://github.com/semantic-release/git), and
  [@semantic-release/github](https://github.com/semantic-release/github).
- Each push to `main` updates the `version` field in `pubspec.yaml`, builds an APK, and releases it
  on GitHub. See `.releaserc.json` for details and customization.

## Miscellaneous

- Thanks to `.gitattributes`, all your end-of-lines are converted to LF, except PNGs. If some of
  your binary files are corrupted, add exceptions to `.gitattributes`.
