An Intl polyfill with support for the subset of locales offered by 99designs.

Usage in an app: 

  - `npm install --save 99designs/intl-99`
  - Script copying the Intl.min.js file to your `htdocs/assets/js` directory (or similar) in build pipeline
  - Include the script in your template with a guard clause. eg: 

```html
<script>
    if (!window.Intl) {
        document.write('<script src="/assets/js/Intl.min.js"></script>');
    }
</script>
```

Building new version (eg: after release of new Intl.js or addition of locales to shared-configuration-bundle)

```shell
make
# update version in package.json
```
