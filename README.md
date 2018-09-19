# watchbuffy [![[version]](https://badge.fury.io/rb/watchbuffy.svg)](https://badge.fury.io/rb/watchbuffy)  [![[travis]](https://travis-ci.org/janlelis/watchbuffy.svg)](https://travis-ci.org/janlelis/watchbuffy)

Suggests a random Buffy or Angel episode to watch

## Setup

Make sure that your computer has [Ruby 2.0 or higher installed](http://ruby.about.com/od/tutorials/a/installruby.htm).

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

Run it again to get a new suggestion

```
$ watchbuffy
▶️  Watch Buffy episode 2×2: "Are You Now or Have You Ever Been"
```

It supports a list of seasons to consider:

```
$ watchbuffy --buffy-season 6 --angel-season 3
▶️  Watch Buffy episode 6×17: "Normal Again"
```

$ watchbuffy --angel-season 4,5
▶️  Watch Angel episode 5×14: "Smile Time"

## MIT License

Copyright (C) 2018 Jan Lelis <http://janlelis.com>. Released under the MIT license.
