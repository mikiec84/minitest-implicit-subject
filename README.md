# Minitest implicit subject

Implicitly define the test subject as any non string argument pass to a describe block. This behavior is borrowed from RSpec.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-implicit-subject'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install minitest-implicit-subject
```

## Usage

If you're not using `Bundler.require` then make sure to require the gem. Notice
this is **not** necessary while using Ruby on Rails.

```ruby
require 'minitest-implicit-subject'

describe Object do
  it 'defines the subject implicitly' do
    subject.must_equal Object
  end
end

describe Object do
  subject { BasicObject }

  it 'does not overwrite a existing subject' do
    subject.must_equal BasicObject
  end
end

describe 'Object' do
  it 'does not turn a string into a subject' do
    respond_to?(:subject).must_equal false
  end
end

describe 'Singleton' do
  Klass = Class.new do
    include Singleton
  end

  describe Klass do
    it 'defines the singleton instance as the subject' do
      subject.must_equal Klass.instance
    end
  end
end
```

## Development

Run test suite:

```bash
bundle exec rake
```
