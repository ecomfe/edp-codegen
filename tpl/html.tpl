<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    {{#author}}<meta name="author" content="{{.}}" />{{/author}}
    <title>{{title}}</title>
    {{#loader}}<script src="{{{loaderUrl}}}"></script>{{/loader}} 
    {{#loaderConfig}}
    <script>
    require.config({
        baseUrl: '{{{loaderBaseUrl}}}',
        paths: { {{#forEach loaderPaths}}
            {{{key}}}: '{{{value}}}'{{^last}},{{/last}}
        {{/forEach}} },
        packages: [ {{#loaderPackages}}
            {
                name: '{{{name}}}',
                location: '{{{location}}}',
                main: '{{{main}}}'
            }{{^last}},{{/last}}
        {{/loaderPackages}}]
    });
    </script>
    {{/loaderConfig}}
</head>

<body>
{{{body}}}
</body>
</html>
