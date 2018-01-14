{
  "name": "ovsjs",
  "version": "0.1.0",
  "description": "Restapi server for OVS",
  "main": "server.js",
  "scripts": {
    "test": "node_modules/mocha/bin/mocha ut/mocha.js --timeout 10000",
    "jslint": "jslint 'server.js'"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/OpenFPGAduino/Arduinojs.git"
  },
  "pre-commit": [
    "test",
    "jslint"
  ],
  "dependencies": {

  },
  "author": "Zhizhou Li",
  "license": "GPL",
  "readmeFilename": "README.md",
  "devDependencies": {
    "pre-commit": "0.0.9",
    "jslint": "0.6.4",
    ""
  },
  "keywords": [
    "Restapi",
    "node"
  ]
}
