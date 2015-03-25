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

### Configure the built-in XSS protection of browsers

An `X-Xss-Protection` header is sent with the value `1; mode=block` to
forcibly enable the reflective XSS protection found in Internet Explorer,
Chrome and other Webkit browsers. [Read more](http://blogs.msdn.com/b/ie/archive/2008/07/02/ie8-security-part-iv-the-xss-filter.aspx)

### Disable MIME type sniffing

By sending an `X-Content-Type-Options` header Internet Explorer and Chrome 
are honouring the MIME type sent by the server, instead of sniffing it from
the file. This reduces the risk of malicious drive-by downloads.

### Compilation debug="false"

 The value of the `debug` attribute of the `Compilation` element is set to 
 `false`.

## License

See License.txt