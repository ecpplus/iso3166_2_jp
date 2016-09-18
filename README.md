# ISO 3166:2 JP

[![CircleCI](https://circleci.com/gh/ecpplus/iso3166_2_jp.svg?style=svg)](https://circleci.com/gh/ecpplus/iso3166_2_jp)

Ruby gem of retrieve all 47 code of Japanese prefectures(subdivisions).

Codes are defined at: https://www.iso.org/obp/ui/#iso:code:3166:JP


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iso_3166_2_jp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iso_3166_2_jp

## Usage

### Retrieve all codes
```ruby
irb(main):001:0> ISO3166_2JP::Subdivision.all
[#<ISO3166_2JP::Subdivision:0x007fa579a4c920
  @code="JP-01",
  @name_en="Hokkaido",
  @name_ja="北海道",
  @numeric=1>,
 #<ISO3166_2JP::Subdivision:0x007fa579a4c5b0
  @code="JP-02",
  @name_en="Aomori",
  @name_ja="青森",
  @numeric=2>,
  ...
```

### Retrieve a subdivision by code
The code format is `/\ZJP-\d{2}\z/` (JP-01,JP-02,..,JP-47)

```ruby
irb(main):001:0> ISO3166_2JP::Subdivision.by_code('JP-13')
#<ISO3166_2JP::Subdivision:0x007fa579a477e0
 @code="JP-13",
 @name_en="Tokyo",
 @name_ja="東京",
 @numeric=13>
```

### Retrieve a subdivision by numeric
The 'numeric' is a numeric contained by a code.
For example, the 'numeric' of code`JP-01` is `1`.

```ruby
irb(main):001:0> ISO3166_2JP::Subdivision.by_numeric(13)
=> #<ISO3166_2JP::Subdivision:0x007fa579a477e0
 @code="JP-13",
 @name_en="Tokyo",
 @name_ja="東京",
 @numeric=13>
 ```

### Retrieve a subdivision by name in Japanese

```ruby
irb(main):001:0> ISO3166_2JP::Subdivision.by_name_ja('東京')
=> #<ISO3166_2JP::Subdivision:0x007fa579a477e0
 @code="JP-13",
 @name_en="Tokyo",
 @name_ja="東京",
 @numeric=13>
```

### Retrieve a subdivision by name in English

```ruby
irb(main):001:0> ISO3166_2JP::Subdivision.by_name_en('Tokyo')
#<ISO3166_2JP::Subdivision:0x007fa579a477e0
 @code="JP-13",
 @name_en="Tokyo",
 @name_ja="東京",
 @numeric=13>
 
irb(main):002:0> ISO3166_2JP::Subdivision.by_name_en('tokyo')
#<ISO3166_2JP::Subdivision:0x007fa579a477e0
 @code="JP-13",
 @name_en="Tokyo",
 @name_ja="東京",
 @numeric=13>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ecpplus/iso_3166_2_jp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

