## Mocha Snippets
[![Build Status](https://travis-ci.org/cowboyd/mocha-snippets.el.png?branch=master)](https://travis-ci.org/cowboyd/mocha-snippets.el)



tldr; `M-x package-install mocha-snippets`

I like [Mocha][1], and I use it a lot. As such, I have a bunch of
snippets that I've developed for it to make working with tests faster.

It contains snippets for both `coffee-mode` and `js-mode`

### Snippet Flavors

Snippets come in two flavors: synchronous and
[explicitly asynchronous][2]. To invoke the explicitly asynchronous
version of a snippet, append a `.` after it. So for example, the `bef` snippet expands to:

```javascript
beforeEach(function() {

});
```

whereas the `bef.` snippet will expand to:

``` javascript
beforEach(function(done) {

});
```

### Snippets

`desc` -> describe block

`cont` -> context block (alias for describe)

`bef` -> beforeEach block

`bef.` -> beforeEach block (async)

`before` -> before block

`before.` -> before block (async)

`aft` -> afterEach block

`aft.` -> afterEach block (async)

`after` -> after block

`after.` -> after block (async)

`it` -> it block

`it.` -> it block (async)

For both setup and teardown, the short forms `bef` and `aft` have
been given to `beforeEach` and `afterEach` respectively, since
those are more commonly used (and if they aren't, then perhaps they
shoud be)

[1]: https://mochajs.org
[2]: https://mochajs.org/#asynchronous-code
