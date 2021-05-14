# lighttpd

## Redirect url path to another host
```shell
# Appen to /etc/lighttpd/external.conf
$HTTP["url"] =~ "^/<source>" {
  $HTTP["host"] =~ ".*" {
    url.redirect = ( "^/(.*)" => "http://<target>:8888" )
    url.redirect-code = 302
  }
}

$ sudo service lighttpd force-reload

# In case something is broken
$ sudo service lighttpd status
$ sudo systemctl status lighttpd.service
$ journalctl -xe
```

```shell
$HTTP["url"] =~ "^/wp" {
  $HTTP["host"] =~ ".*" {
    url.redirect = ( "^/(.*)" => "http://192.168.0.15:8080" )
    url.redirect-code = 302
  }
}

#$HTTP["host"] == "192.168.0.10" {
#     $HTTP["host"] == "192.168.0.10" {
#          url.redirect = (
#             "(.*)" => "http://www.example.com/subpage"
#          )
#     }
#}

# $HTTP["host"] == "www.site1.com" {
#     $HTTP["url"] =~ "^/$" {
#         url.redirect = ( "" => "http://www.site2.com/" )
#         url.redirect-code = 302
#     }
# }
```

### Redirect www subdomain to domain (keep path)
```shell
$HTTP["host"] == "www.example.com" {
  url.redirect  = (
    "^/(.*)" => "http://example.com/$1",
  )
}
```

### Redirect all subdomains to domain (keep path)

```shell
$HTTP["host"] =~ "^www\.(.*)$" {
  url.redirect  = (
    "^/(.*)" => "http://%1/$1",
  )
}
```

### Redirect TLDs
```shell
$HTTP["host"] =~ "^(www\.)?example\.(net|org)$" {
  url.redirect  = (
    "^/(.*)" => "http://example.com/$1",
  )
}
```
[How to redirect][ltpd1]




## References
[How to redirect][ltpd1]

[ltpd1]: https://redmine.lighttpd.net/projects/lighttpd/wiki/HowToRedirectWww/6 "How to redirect"
