/**
 * @file codegen管理功能模块
 * @author errorrik[errorrik@gmail.com]
 */



require( 'fs' ).readdirSync( __dirname + '/lib' ).forEach(
    function ( file ) {
        if ( /\.js$/.test( file ) ) {
            file = file.replace( /\.js$/, '' );
            exports[ file ] = require( './lib/' + file );
        }
    }
);


