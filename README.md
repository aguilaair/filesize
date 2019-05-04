# Filesize

[![pub package](https://img.shields.io/pub/v/filesize.svg)](https://pub.dartlang.org/packages/filesize) [![Build Status](https://travis-ci.org/synw/filesize.svg?branch=master)](https://travis-ci.org/synw/filesize) [![Coverage Status](https://coveralls.io/repos/github/synw/filesize/badge.svg?branch=master)](https://coveralls.io/github/synw/filesize?branch=master)


A micro library that provides an easy way to get human readable file size strings

## Features

- Size can be passed as number or as string
- Optional parameter to specify numbers of digits after comma/point

## Examples

``` dart
filesize(1024);                   // "1 KB"
filesize(664365320);              // "633.59 MB"
filesize(4324324232343);          // "3.93 TB"
```

Optional parameter to specify numbers after comma/point:

``` dart
filesize(664365320, 4);          // "633.5881 MB"
filesize(4324324232343, 3);      // "3.932 TB"
```

Inspired by [filesize.js](https://github.com/avoidwork/filesize.js "filesize.js")
