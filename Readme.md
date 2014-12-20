# AtleX.Web.Config

A NuGet package that applies some security- and performance related
optimizations to your Web.config file.

Everytime I start a new ASP.net or ASP.net MVC project I find myself 
applying the same settings to the Web.config over and over again. So,
after doing that for the n-th time I spent a few moments creating
this NuGet package to automate it.

## Installation

```
install-package AtleX.Web.Config
```

The package is hosted [on NuGet.org](https://www.nuget.org/packages/AtleX.Web.Config/)

## Optimizations

### Remove excessive headers

The `X-Powered-By` and `X-AspNet-Version` are removed from all responses.

### Prevent ClickJack

To prevent [Clickjacking](https://www.owasp.org/index.php/Clickjacking) an 
`X-Frame-Options` header with the value `DENY` is added to all responses.

### Compilation debug="false"

 The value of the `debug` attribute of the `Compilation` element is set to 
 `false`.

### Caching

Static files are cached by the client for up to 7 days. The ASP Output Cache
is disabled in the Web.config for development and debug purposes and enabled
in Web.Release.config.

## License

See License.txt