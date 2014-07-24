/**
 * @file ${file}
 * @author ${author}(${email})
 */

define(function (require, exports, module) {
    // 引入一个依赖的模块，可以使用require(relative/top-level id) 
    // var dependModule = require('./dependModule');

<!-- if: ${functionModule} -->
    /**
     * ${moduleDescription}
     */
    function ${moduleId}() {
        // do something here
    }
<!-- else -->
    /**
     * ${moduleDescription}
     */
    var ${moduleId} = {};
<!-- /if -->

    // return模块
    return ${moduleId};
});
