# Apache rewrite rules

* Point to other directory e.g. from `public_html` to the subdirectory `public` (like in laravel projects):
```bash
# .htaccess

<IfModule mod_rewrite.c>
RewriteEngine On
RewriteRule ^(.*)$ public/$1 [L]
</IfModule>
```
