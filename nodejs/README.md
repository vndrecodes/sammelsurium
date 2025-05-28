# README

## Notes
* `npm init` to initialize new project
* add: `"type": "module",` to package.json to enable ES6 modules
```js
// file A
function print(variable) {
    console.log(variable);
}

export {print,};


// file B
import { print } from "./utils.js";

print(global);
```
* `npm install` to install app with dependencies from `package.json` (e.g. on another machine or in production)
### npm scripts
Add scripts in `package.json` file in `"scripts":` attribute.
```json
"scripts": {
    "start": "node server.js",
    "dev": "node server.js",
    "foo": "node server.js,
},
```
Scripts named `start` or `test` can be run with:
```bash
$ npm start
```
Scripts named other than `start` or `test` must be run with `run` command:
```bash
$ npm run foo
```
