<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <!-- if: ${author} --><meta name="author" content="${author}" /><!-- /if -->
    <title>${title}</title>
    <!-- if: ${loader} --><script src="${loaderUrl}"></script><!-- /if -->
    <!-- if: ${loaderConfig} --><script>
    require.config({
        'baseUrl': '${loaderBaseUrl}',
        'paths': {<!-- for: ${loaderPaths} as ${path} -->
            '${path.key}': '${path.value}'<!-- if: !${path.last} -->,<!-- /if --><!-- /for -->
        },
        'packages': [<!-- for: ${loaderPackages} as ${pkg} -->
            {
                'name': '${pkg.name}',
                'location': '${pkg.location}'<!-- if: ${pkg.main} -->,
                'main': '${pkg.main}'<!-- /if -->
            }<!-- if: !${pkg.last} -->,<!-- /if --><!-- /for -->
        ]
    });
    </script><!-- /if -->
</head>

<body>
${body}
</body>
</html>
