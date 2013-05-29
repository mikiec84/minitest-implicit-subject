# Minitest implicit subject

Implicitly define the test subject as any non string argument pass to a describe block. This behavior is borrowed from RSpec.

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-implicit-subject'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-implicit-subject

## Usage

```ruby
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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
