describe 'implicit subject' do
  describe Object do
    it 'defines a implicit subject if anything other than a string is passed to describe' do
      subject.must_equal Object
    end
  end
end

describe 'explicit subject' do
  describe Object do
    subject { 1 }

    it 'does not overwrite an existing subject' do
      subject.must_equal 1
    end
  end
end

describe 'missing subject' do
  it 'does not define a subject if a string is passed to describe' do
    respond_to?(:subject).must_equal false
  end
end

describe 'singleton subject' do
  klass = Class.new do
    include Singleton
  end

  describe klass do
    it 'defines the singleton instance as the subject' do
      subject.must_equal klass.instance
    end
  end
end
