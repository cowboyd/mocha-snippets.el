## Mocha Snippets
[![MELPA](http://melpa.milkbox.net/packages/mocha-snippets-badge.svg)](http://melpa.milkbox.net/#/mocha-snippets)
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

### Customization

Mocha snippets have several configuration points to let your control
how snippets are generated.

#### mocha-snippets-string-delimiter

By default, mocha snippets uses single quotes to delimit strings in
its templates. However, you can set this variable to either `"` or
`\`` to use a different delimiter:

``` javascript
//desc=>
describe('something', function() {
  //cursor here.
});
```

configure the varibale

``` emacs-lisp
(setq mocha-snippets-string-delimiter "\"")
```

and it now becomes:
``` javascript
//desc=>
describe("something", function() {
  //cursor here.
});
```

#### mocha-snippets-use-fat-arrows

Out of the box, mocha will use "classic" function syntax for all of
the functions it generates for you. However, if you like to use ES6
fat arrow syntax, you can set this variable and your snippets will now
all use it.

``` emacs-lisp
(setq mocha-snippets-use-fat-arrows t)
```

``` javascript
//desc=>
describe('something', () => {
  //cursor here.
});
```

#### mocha-snippets-use-parenthesis-around-single-arguments

If you have the `mocha-snippets-use-fat-arrows` variable set, and you want no
parentheses around single argument functions because of the linter for your
project, or any reason. You can disable this variable to have no parentheses.

``` emacs-lisp
(setq mocha-snippets-use-parenthesis-around-single-arguments nil)
```

``` javascript
//desc=>
describe('something', done => {
  //cursor here.
});
```



[1]: https://mochajs.org
[2]: https://mochajs.org/#asynchronous-code
