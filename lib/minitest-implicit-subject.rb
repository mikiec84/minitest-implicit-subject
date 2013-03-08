require 'minitest/spec'

module Kernel
  alias_method :odescribe, :describe

  def describe(*args, &block)
    cls = odescribe(*args, &block)
    name = args.first

    if !name.is_a?(String) && !cls.instance_methods.include?(:subject)
      cls.subject { name }
    end

    cls
  end
end
