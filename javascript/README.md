# JavaScript

## Version history



### ECMA-262

[Compatibility tables](https://kangax.github.io/compat-table/es2016plus)

#### 13th edition, June 2022

[Specification](https://262.ecma-international.org/13.0/)

- [Class field declarations for JavaScript](https://github.com/tc39/proposal-class-fields)
- [Ergonomic brand checks for Private Fields](https://github.com/tc39/proposal-private-fields-in-in)

### TypeScript

TBD

## Maintenance

### Analyze ecma262 commits

```sh
git clone git@github.com:tc39/ecma262.git
cd ecma262

# Overview
git log es2021..es2022 --grep="Normative" --oneline

# Proposals
git log es2021..es2022 | grep -i proposal
```

### Verify sandbox project

Run the following command to verify that the JavaScript sandbox project is correctly configured:

```sh
npm install
```

**Also see**

- [Downloading and installing Node.js and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

## References

- [TC39 - Specifying JavaScript. | tc39.es](https://tc39.es/)
- https://github.com/tc39/ecma262/tags
- [JavaScript technologies overview - JavaScript | MDN | developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/JavaScript_technologies_overview)
- [ECMAScript - Wikipedia | en.wikipedia.org](https://en.wikipedia.org/wiki/ECMAScript)
- https://github.com/tc39/ecma402
- https://github.com/Microsoft/TypeScript
