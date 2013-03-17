[![Build Status](https://travis-ci.org/harmesy/cbc_spark.png?branch=master)](https://travis-ci.org/harmesy/cbc_spark)

# CbcSpark

Rubygem for accessing episodes from [CBC Spark](http://cbc.ca/spark).

## Installation

Add this line to your application's Gemfile:

    gem 'cbc_spark'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cbc_spark

## Usage

You can't do much yet. So far you can retrieve a list of all the episodes with `CbcSpark.list`, fetch a specific episode by number with `CbcSpark.get(x)` or the latest with `CbcSpark.latest`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
