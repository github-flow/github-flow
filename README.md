github-flow
===========

git flow esque helpers, designed with github in mind.

Installation
------------

To install, run the installation script:

```
curl https://raw.github.com/github-flow/github-flow/v1.1/install.sh | $(which bash)
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


Configuration
-------------

Repositories are configured using three properties under `github-flow`: `origin`, `upstream`, and `master`. Origin and upstream are the logical remotes. `upstream` is the canonical upstream project, usually owned by an organization. `origin` is the users' fork, generally owned by the user's account. 'master' is the logical primary development branch, usually either "master" or "develop". By default, the values are the same as their keys. To use the traditional git-flow model of branching and working off develop, in a local repository run `git config --local --add github-flow.master develop`

TODO, Bugs
----------

See the [bug tracker](https://github.com/github-flow/github-flow/issues).
