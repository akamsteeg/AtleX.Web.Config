# AtleX.Web.Config

A NuGet package that applies some security- and performance related
optimizations to your Web.config file.

## Installation

```
install-package AtleX.Web.Config
```

The package is hosted [on NuGet.org](https://www.nuget.org/packages/AtleX.Web.Config/)

## Optimizations

### Remove excessive headers

The `X-Powered-By` and `X-AspNet-Version` are removed from all responses.

### Prevent ClickJack

To prevent [Clickjacking](https://www.owasp.org/index.php/Clickjacking) an `X-Frame-Options` header 
with the value `DENY` is added to all responses.

### Caching of static files

Static files are cached by the client for up to 7 days.

## License

See License.txt