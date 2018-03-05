
> Docker to run the [`fish` port of `pure`](https://github.com/rafaelrinaldi/pure) prompt in a clean environment.

### Usage

**Fetch**

    docker pull edouardlopez/pure-fish

**Run** ([`pure`](https://github.com/rafaelrinaldi/pure) latest version)

    docker run --name pure -it edouardlopez/pure-fish

**Run tests**

    docker run --name test -t edouardlopez/pure-fish 'fishtape tests/*.test.fish'
