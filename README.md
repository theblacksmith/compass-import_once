# Compass Import Once Plugin

This gem makes [Sass Import Once][sass-import_once] work with compass while 
[this issue](https://github.com/chriseppstein/compass/pull/1140) isn't fixed.

Sass import_once **changes the default behaviour of the sass @import** directive making it never require the same file twice.

It's awesome! [Check it out][sass-import_once]

## Installation

    $ gem install compass-import_once

## Configuration

Add the following to your compass configuration:

    require 'compass-import_once'

## Stylesheet Syntax

The same as always :)

[sass-import_once]: https://github.com/theblacksmith/sass-import_once
