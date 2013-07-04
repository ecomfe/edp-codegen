/**
 * @file 生成Javascript代码功能
 * @author errorrik[errorrik@gmail.com]
 */

/**
 * 生成Javascript代码
 * 该方法生成的文件模板已经内置
 * 
 * @param {Object} data 模板环境数据
 * @param {string=} outputFile 输出文件的路径
 * @return {string}
 */
module.exports = function ( data, outputFile ) { 
    var sourceFile = require( 'path' ).resolve( __dirname, '../tpl/js.tpl' );
    var source = require( 'fs' ).readFileSync( sourceFile, 'UTF-8' );

    return require( './text' )( source, data, outputFile );
};
