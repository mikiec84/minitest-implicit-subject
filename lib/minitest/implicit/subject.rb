require 'minitest/spec'

module Kernel
  alias_method :alias_describe, :describe

  def describe(*args, &block)
    cls = alias_describe(*args, &block)
    subject = args.first

    if !subject.is_a?(String) && !cls.instance_methods.include?(:subject)
      cls.subject { subject }
    end

    cls
  end
end
