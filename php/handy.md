# Good to know php stuff

## Basic
### String interpolation
```php

// Concatination
$myVar = $foo . " " . "Hello";

// Interpolation
$myVar = "$foo Hello";
```

### Echoing Variables
```php
<?php  echo("Hello World"); ?>

// Short

<?= "Hello World!"; ?>
```

### Wrap variable name
```php
<?php
$myVar = "Hel";

echo("{$myVar}lo World!");
?>
```

### Alternative syntax for control structures
```php
<?php
$myArr = ['foo', 'bar', 'baz'];
?>

<?php foreach($myArr as $item) : ?>
  <div>
    <?= $item; ?>
  </div>
<?php endforeach; ?>
```

### Associative arrays
```php
<?php
$myArr = [
  'name' => 'value',
  'key' => 'value',
  'foo' => 'bar',
  ]
?>
```

### Anonymous functions
```php
<?php
$myFun = function (){

};

?>

```



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
