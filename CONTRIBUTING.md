# Contribute to this project

This project to for testing project with CircleCI.
It should be cleaned as possible so it should finish job as fast as CircleCI can.

Please use [pre-commit](https://pre-commit.com/) before commit anything.

## Pull Request

1. Please [create an issue](https://github.com/teamkaidee/iOS-CircleCI-sample/issues/new) first.
1. Then use issue number to create a branch name for example `feature/OSS-<number>` e.g. feature/OSS-9 so github can automatically create a link if github found a word that match `OSS-<number>` pattern.
1. Make sure [./bin/format.sh](bin/format.sh) was run before commit anything. (This should be also run with pre-commit)
1. Feel free to open a Pull Request.

## TODO

To left with TODO: or FIXME: please follow `OSS-<issue number>`

## Styleguides

### Git Commit Messages

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally after the first line
* When only changing documentation, include `[ci skip]` in the commit title
* Consider starting the commit message with an applicable emoji:
  * :art: `:art:` when improving the format/structure of the code
  * :racehorse: `:racehorse:` when improving performance
  * :non-potable_water: `:non-potable_water:` when plugging memory leaks
  * :memo: `:memo:` when writing docs
  * :penguin: `:penguin:` when fixing something on Linux
  * :apple: `:apple:` when fixing something on macOS
  * :checkered_flag: `:checkered_flag:` when fixing something on Windows
  * :bug: `:bug:` when fixing a bug
  * :fire: `:fire:` when removing code or files
  * :green_heart: `:green_heart:` when fixing the CI build
  * :white_check_mark: `:white_check_mark:` when adding tests
  * :lock: `:lock:` when dealing with security
  * :arrow_up: `:arrow_up:` when upgrading dependencies
  * :arrow_down: `:arrow_down:` when downgrading dependencies
  * :shirt: `:shirt:` when removing linter warnings

___This section was copy from___: https://raw.githubusercontent.com/atom/atom/master/CONTRIBUTING.md
