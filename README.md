# juce-cli

[![Gem Version](https://badge.fury.io/rb/juce-cli.svg)](https://badge.fury.io/rb/juce-cli)

**juce-cli** is a Ruby-based command-line interface for **juce**,  
a Clojure DSL designed for generating HTML using S-expression syntax.

---

## Overview
**juce** is a lightweight and expressive DSL that uses Clojure’s syntax to generate HTML.  
For example:
```clojure
(div "Hello" (span "world"))
```
juce-cli allows you to evaluate such DSL expressions directly from the command line and output HTML.
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
