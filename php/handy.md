# Good to know php stuff

## php.ini
Locate and alter `php.ini` file. If no file is present, copy one of the default files as a basis and edit as you need.

```bash
$ php --ini # see if a ini file is loaded and which directories are watched

$ find / -name "php.ini*" 2>/dev/null # search for php.ini-production or php.ini-development

$ cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # copy one of the php.ini default files found with the find command to one of the destinations mentioned by php --ini command.
```

## Debug

### Display errors
Turn `display_errors = on` in `php.ini` file
