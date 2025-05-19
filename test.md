```bash
docker build -t frankentest .
mkdir app
docker run --rm -it -v`pwd`:/app --user=root frankentest bash
composer create-project symfony/skeleton:"7.2.x" app # will fail due to missing runtime
cd app/
composer require runtime/frankenphp-symfony
exit
docker run --rm -it -v`pwd`/app:/app --user=`id -u` frankentest # SIGSEGV
```
