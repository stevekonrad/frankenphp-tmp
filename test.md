```bash
docker build -t frankentest .
docker run --rm -it -v`pwd`/app:/app --user=root frankentest bash
composer install # will fail due to missing runtime
exit
docker run --rm -it -v`pwd`/app:/app --user=`id -u` frankentest # SIGSEGV
```
