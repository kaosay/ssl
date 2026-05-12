# ssl
ssl tools

## How to use certbot
https://docs.certcloud.cn/docs/installation/auto/acme/certbot/#%E6%89%8B%E5%8A%A8%E7%AD%BE%E5%8F%91%E8%AF%81%E4%B9%A6
```
certbot certonly --manual --preferred-challenges dns-01 --domain *.test.com --domain test.com
```
Please deploy a DNS TXT record under the name:

_acme-challenge.lucky.site.

with the following value:

UGtL0CjPDkaKvg2LsWIwQLQzf7QwJmJ9HB29w8XOe88

Before continuing, verify the TXT record has been deployed. Depending on the DNS
provider, this may take some time, from a few seconds to multiple minutes. You can
check if it has finished deploying with aid of online tools, such as the Google
Admin Toolbox: https://toolbox.googleapps.com/apps/dig/#TXT/_acme-challenge.luckydice.site.
Look for one or more bolded line(s) below the line ';ANSWER'. It should show the
value(s) you've just added.

```
dig TXT _acme-challenge.lucky.site
```
