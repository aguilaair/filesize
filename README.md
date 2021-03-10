# Filesize

[![pub package](https://img.shields.io/pub/v/filesize.svg)](https://pub.dartlang.org/packages/filesize_plus) [![Dart](https://github.com/aguilaair/filesize/actions/workflows/dart.yml/badge.svg)](https://github.com/aguilaair/filesize/actions/workflows/dart.yml) 

A micro library that provides an easy way to get human readable file size strings. Now with null safety!

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
