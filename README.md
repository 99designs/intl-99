An Intl shim with support for the subset of locales offered by 99designs.

We're shimming Intl support for consistency. Chrome doesn't differentiate USD vs local dollar currency when in a locale that uses $ as its currency symbol.

Usage in an app: 

  - `npm install --save 99designs/intl-99`
  - require in some top level js file:

```js
    require('intl-99/Intl.complete');
```

Building new version after addition of locales to shared-configuration-bundle

```shell
make
# update version in package.json
```
