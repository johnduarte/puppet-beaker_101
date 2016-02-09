# beaker_101

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with beaker_101](#setup)
    * [What beaker_101 affects](#what-beaker_101-affects)
    * [Beginning with beaker_101](#beginning-with-beaker_101)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations](#limitations)

## Overview

This module installs an introductory set of [beaker](https://github.com/puppetlabs/beaker)
config and test files.

## Module Description

Installs `/tmp/beaker_101` directory with sample
[beaker](https://github.com/puppetlabs/beaker) configuration
and test files.

## Setup

### What beaker_101 affects

* /tmp/beaker_101

### Beginning with beaker_101

`puppet apply -e "include beaker_101"`

## Usage

Install the beaker_101 files via puppet.

`puppet apply -e "include beaker_101"`

Once these are installed, you can install beaker and its dependencies via
bundler from within the `beaker_101` directory. This will allow you to use
beaker within the confines of bundler

```
cd /tmp/beaker_101
bundle package --all
bundle install --local
bundle exec beaker --provision --preserve-hosts --hosts vmpooler.cfg --pre-suite install_foss.rb --tests hello_test.rb
```

## Limitations

If you are using a ruby manager such as rvm, or chruby, the expected ruby
commands will not be available if you change directories into the
`/tmp/beaker_101` location. You can work around this limitation of the ruby
managers by creating a symlink to `/tmp/beaker_101` in your `$HOME` directory.

Example:

```
ln -s  /tmp/beaker_101 $HOME/beaker_101
cd /tmp/beaker_101
bundle package --all
bundle install --local
bundle exec beaker --provision --preserve-hosts --hosts vmpooler.cfg --pre-suite install_foss.rb --tests hello_test.rb
```
