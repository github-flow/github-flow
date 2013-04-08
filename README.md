github-flow
===========

git flow esque helpers, designed with github in mind.

Installation
------------

To install, run the installation script:

```
curl https://raw.github.com/github-flow/github-flow/v1.0/install.sh | $(which bash)
```

To update, run the install script again.

To install or update outside the default directory, pass a folder as the first parameter to bash.

Usage
-----

Usage is very similar to git-flow

`git hub-clone <org/repo>` Fork and clone a repository to use with git hub-flow.

`git hub-feature start <feature>` Begin working on a new feature.

`git hub-feature update [feature]` Bring master branch up to date, and rebase `feature` off master.

`git hub-feature publish [feature]` Push changes on `feature` to `origin` repository.

`git hub-feature review [feature]` Open pull request on `upstream`/`feature` against `origin`/`feature`.

`git hub-feature finish [feature]` Merge pull request for this feature, and prune branches.

All commands with `[feature]` either take a parameter to specify the branch, or work off the current (non-`master`) branch.

TODO, Bugs
----------

See the [bug tracker](https://github.com/github-flow/github-flow/issues).