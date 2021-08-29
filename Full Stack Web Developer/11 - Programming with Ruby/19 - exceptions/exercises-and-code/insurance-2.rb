# File: insurance-2.rb
#
class PolicyAlreadyActive < StandardError
end

class InsurancePolicy
  def initialize(code)
    @code = code
    @state = 'pending-activation'
  end

  def activate!
    raise PolicyAlreadyActive, "Policy with #{code} is already active!" if active?
    @state = 'active'
  end

  def to_s
    code
  end

  private

  def active?
    state == 'active'
  end

  attr_reader :code, :state
end

policy = InsurancePolicy.new('ABCD')

puts "Trying to activate Policy #{policy}..."
policy.activate!

puts "Trying to activate Policy #{policy} again ..."
policy.activate!
