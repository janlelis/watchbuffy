# watchbuffy [![[version]](https://badge.fury.io/rb/watchbuffy.svg)](https://badge.fury.io/rb/watchbuffy)  [![[travis]](https://travis-ci.org/janlelis/watchbuffy.svg)](https://travis-ci.org/janlelis/watchbuffy)

CLI utility which suggests a random Buffy or Angel episode to watch!

## Setup

Make sure that your computer has Ruby 2.0 or higher installed.

Then run

```ruby
gem install watchbuffy
```

## Usage

Run `watchbuffy` on the command-line:

```
$ watchbuffy
▶️  Watch Buffy episode 6×8: "Tabula Rasa"
```

Run it again to get a new suggestion:

```
$ watchbuffy
▶️  Watch Angel episode 2×2: "Are You Now or Have You Ever Been"
```

It supports a list of seasons to consider:

```
$ watchbuffy --buffy-season 6 --angel-season 3
▶️  Watch Buffy episode 6×17: "Normal Again"
```

```
$ watchbuffy --angel-season 4,5
▶️  Watch Angel episode 5×14: "Smile Time"
```

### Advanced Options

You can pass in a command-line option to ignore certain characters. By now, only Connor is supported:

```
$ watchbuffy --angel-season 4 --no-connor
No episode found
```

## MIT License

Copyright (C) 2018 Jan Lelis <https://janlelis.com>. Released under the MIT license.
