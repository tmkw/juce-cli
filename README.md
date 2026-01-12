# juce-cli

[![Gem Version](https://badge.fury.io/rb/juce-cli.svg)](https://badge.fury.io/rb/juce-cli)

**This is an experimental project. Do not use for production level.**

**juce-cli** is a Ruby-based command-line interface for **[juce](https://github.com/tmkw/juce)**,  
a Clojure DSL designed for generating HTML using Clojure (S-expressions) syntax.
It is intended for static site or page generation, and is not suitable as a dynamic web page renderer.

---

## Quick Example

```shell
$ echo '(div "Hello, World!")' | juce
<div>Hello, World!</div>
```

## Requirements

To use juce-cli, the following software must be installed:

- Ruby 3.3.4 or higher
- Clojure CLI 1.12.4 or higher

Ruby installation guide: https://www.ruby-lang.org/en/documentation/installation/

Clojure installation guide: https://clojure.org/guides/install_clojure

## Installation
### RubyGems
```shell
$ gem install juce-cli
```

### Bundler
Gemfile:
```
gem "juce-cli"
```
Install:
```shell
$ bundle install
```
Run:
```
$ bundle exec juce ....
```

## Usage

### Basic examples

```shell
$ echo '(div "Hello, World!")' | juce
<div>Hello, World!</div>

# this is equivalent to the above
$ juce -e '(div "Hello, World!")'
```

```shell
$ echo '(div :id 123 :class "xyz hoge" "Hello, World!")' | juce
<div id="123" class="xyz hoge">Hello, World!</div>
```

### Help

```shell
$ juce --help
```

## DSL Specification

The full DSL specification, examples, and extension mechanisms are documented in the juce repository:
https://github.com/tmkw/juce

## License

This project is licensed under the BSD 2-Clause License (SPDX: BSD-2-Clause).
See the LICENSE file for details.

## Author

Takanobu Maekawa

https://github.com/tmkw
