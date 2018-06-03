
A docker image to use [spatie/phpunit-watcher](https://github.com/spatie/phpunit-watcher) for automatically rerun PHPUnit tests when source code changes

## Installation

Download image ```docker pull josimarlemos/phpunit-watcher:alpine```

## Usage

Run the josimarlemos/phpunit-watcher image:

```docker run -it --rm --volume $(pwd):/app josimarlemos/phpunit-watcher:alpine phpunit-watcher watch```

If you want to be able to run phpunit-watcher as if it was installed on your host locally, you can define the following function in your ~/.bashrc, ~/.zshrc or similar:

``` sh
pw () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --volume $(pwd):/app \
        josimarlemos/phpunit-watcher:alpine \
        phpunit-watcher watch "$@"
}
```

For a complete reference about usage and customization see [phpunit-watcher doc](https://github.com/spatie/phpunit-watcher#automatically-rerun-phpunit-tests-when-source-code-changes)

## Credits

* [Package phpunit-watcher](https://github.com/spatie/phpunit-watcher) by [Spatie](https://spatie.be/en/opensource/php)
* [This article](https://hackernoon.com/automatically-running-phpunit-with-watchman-e02757e733e7) by [@sebdedeyne](https://hackernoon.com/@sebdedeyne)

## Licence

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
