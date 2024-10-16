# Debugging php

## xdebug

## laravel

** [20241016] Not sure why this is here, not sure if this works? **
Run:
```shell
$ php -dxdebug.remote_enable=1 -dxdebug.remote_mode=req -dxdebug.remote_port=9000 -dxdebug.remote_host=127.0.0.1 artisan serve --host=0.0.0.0 --verbose

$ php -z /usr/local/lib/php/pecl/20230831/xdebug.so artisan serve --host=0.0.0.0 --verbose
```