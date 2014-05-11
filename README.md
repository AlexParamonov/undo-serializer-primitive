Undo
==========
[![Build Status](https://travis-ci.org/AlexParamonov/undo-serializer-primitive.png?branch=master)](https://travis-ci.org/AlexParamonov/undo-serializer-primitive)
[![Coverage Status](https://coveralls.io/repos/AlexParamonov/undo-serializer-primitive/badge.png?branch=master)](https://coveralls.io/r/AlexParamonov/undo-serializer-primitive?branch=master)
[![Code Climate](https://codeclimate.com/github/AlexParamonov/undo-serializer-primitive.png)](https://codeclimate.com/github/AlexParamonov/undo-serializer-primitive)
[![Gemnasium Build Status](https://gemnasium.com/AlexParamonov/undo-serializer-primitive.png)](http://gemnasium.com/AlexParamonov/undo-serializer-primitive)
[![Gem Version](https://badge.fury.io/rb/undo-serializer-primitive.png)](http://badge.fury.io/rb/undo-serializer-primitive)

Serializer for primitives for [Undo gem](https://github.com/AlexParamonov/undo).

Serializes booleans, integers, floats, empty arrays and hashes, etc.

Contents
---------
1. Installation
1. Usage
1. Requirements
1. Contacts
1. Compatibility
1. Contributing
1. Copyright

Installation
------------

Add this line to your application's Gemfile:

    gem 'undo-serializer-primitive'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install undo-serializer-primitive


Usage
-----

Primivite serializer best applicable as extension to another serializers. It
takes the responsibility of serializing primitive values, which mostly are the
edge cases for another serializers:

    primitive_serializer = Undo::Serializer::Primitive.new
    primitive_serializer.serialize(object) if primitive_serializer.serialize? object
    primitive_serializer.deserialize(input) if primitive_serializer.deserialize? input

Requirements
------------
1. Ruby 1.9 or above
1. Undo gem

Contacts
--------
Have questions or recommendations? Contact me via `alexander.n.paramonov@gmail.com`  
Found a bug or have enhancement request? You are welcome at [Github bugtracker](https://github.com/AlexParamonov/undo-serializer-primitive/issues)


Compatibility
-------------
tested with Ruby

* 2.1
* 2.0
* 1.9.3
* ruby-head
* rbx
* jruby-19mode
* jruby-head

See [build history](http://travis-ci.org/#!/AlexParamonov/undo-serializer-primitive/builds)


## Contributing

1. [Fork repository](http://github.com/AlexParamonov/undo-serializer-primitive/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Copyright
---------
Copyright © 2014 Alexander Paramonov.
Released under the MIT License. See the LICENSE file for further details.
