## Steps to reproduce the segv on 1.6 frankenphp (php 8.4.7)

```bash
docker build -t frankentest .
docker run --rm -it -v`pwd`/app:/app --user=root frankentest bash
composer install
exit
docker run --rm -it -v`pwd`/app:/app --user=`id -u` frankentest # SIGSEGV
```
