require 'minitest/spec'
require 'singleton'

module Kernel
  alias_method :alias_describe, :describe

  private

  def describe(*args, &block)
    cls = alias_describe(*args, &block)
    subject = args.first

    if !subject.is_a?(String) && !cls.instance_methods.include?(:subject)
      if subject.respond_to?(:included_modules) && Array === subject.included_modules && subject.included_modules.include?(Singleton)
        subject = subject.instance
      end

      cls.subject { subject }
    end

    cls
  end
end
