/**
 * @file 生成代码文本功能
 * @author errorrik[errorrik@gmail.com]
 */

/**
 * 生成代码文本
 * 
 * @param {string} handlebarsSource handlebars模板源代码
 * @param {Object} data 模板环境数据
 * @param {string=} outputFile 输出文件的路径
 * @return {string}
 */
module.exports = function ( handlebarsSource, data, outputFile ) {
    var etpl = require( 'etpl' );
    // etpl.config({ strip: true });
    var template = etpl.compile( handlebarsSource );
    var text = template( data );

    if ( outputFile ) {
        require( 'fs' ).writeFileSync( outputFile, text, 'UTF-8' );
    }

    return text;
};
