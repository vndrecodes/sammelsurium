# Useful

#### Plugins
* Elementor + Starter Theme
* Elementor + OceanWP Theme
  * Ocean Extra
  * Essential Addons for Elementor
* Astra - Starter Templates for Elementor, WordPress & Beaver Builder Templates 
* Envato Elements – Photos & Elementor Templates

##### Configurations

* `.htaccess`
```shell
php_value post_max_size 256M
php_value max_execution_time 300
php_value max_input_time 300
php_value max_input_vars 5000
php_value upload_max_filesize 128M
php_value memory_limit 256M
```

* `php.ini`
```shell
post_max_size 256M
max_execution_time 300
max_input_time 300
max_input_vars 5000
upload_max_filesize 128M
```

* `wp-config.php`
```php
define('WP_MEMORY_LIMIT', '256M');
```

#### Debug
```php
// Enable WP_DEBUG mode
define( 'WP_DEBUG', true );

// Enable Debug logging to the /wp-content/debug.log file
define( 'WP_DEBUG_LOG', true );

// Disable display of errors and warnings
define( 'WP_DEBUG_DISPLAY', false );
@ini_set( 'display_errors', 0 );

// Use dev versions of core JS and CSS files (only needed if you are modifying these core files)
define( 'SCRIPT_DEBUG', true );
```