# edp-codegen

Package for edp code generation. It's simple, and offen use for secondary development.

## Usage

```javascript
var edpCodegen = require( 'edp-codegen' );
edpCodegen.text( '{{user.name}}', yourname );
```

## API


### text( handlebarsSource, data, outputFile )

生成代码文本.

- `handlebarsSource` {string}
- `data` {Object}
- `outputFile` {string=}


### html( data, outputFile )

生成HTML代码.

- `data` {Object}
- `outputFile` {string=}



### js( data, outputFile )

生成Javascript代码.

- `data` {Object}
- `outputFile` {string=}
