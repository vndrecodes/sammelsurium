# laravel

### Read cached **env** values
* Modifications to cached `.env` file have no effect
* config files read values from `.env` which then can be accessed w. config helper

```php
# Create config file in config dir:

# config/custom.php
return [
    'mail_recipient_address' => env('MAIL_RECIPIENT_ADDRESS'),
];


# Read values with config helper in desired file

# myController.php
$mailRecipient = config('custom.mail_recipient_address');
```
