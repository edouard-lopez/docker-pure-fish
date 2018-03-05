
> Docker to run the [`fish` port of `pure`](https://github.com/rafaelrinaldi/pure) prompt.

### Usage

**Fetch**

    docker pull edouard-lopez/pure-fish

**Run** ([`pure`](https://github.com/rafaelrinaldi/pure) latest version)

    docker run --name pure -it pure-fish

**Run tests**

    docker run --name test -t pure-fish 'fishtape tests/*.test.fish'
