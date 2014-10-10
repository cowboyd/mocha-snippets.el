## Mocha Snippets
[![Build Status](https://travis-ci.org/cowboyd/mocha-snippets.el.png?branch=master)](https://travis-ci.org/cowboyd/mocha-snippets.el)



tldr; `M-x package-install mocha-snippets`

I like [Mocha][1], and I use it a lot. As such, I have a bunch of
snippets that I've developed for it to make working with tests faster.

It contains snippets for both `coffee-mode` and `js-mode`

### Snippets

`desc` -> describe block

`bef` -> beforeEach block

`before` -> before block

`aft` -> afterEach block

`after` -> after block

`it` -> it block

For both setup and teardown, the short forms `bef` and `aft` have
been given to `beforeEach` and `afterEach` respectively, since
those are more commonly used (and if they aren't, then perhaps they
shoud be)

[1]: http://visionmedia.github.io/mocha/
