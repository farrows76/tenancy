require 'test_helper'

class Tenancy::Test < ActiveSupport::TestCase
  def teardown
    Tenancy.configure {}
    Tenancy.config = nil
  end

  test "should set tenancy class from config defaults" do
    assert_equal Tenant, Tenancy.tenancy_class
  end

  test "should set tenancy class from initializer file" do
    Tenancy.configure do |config|
      config.tenancy_class = 'Account'
    end

    assert_equal Account, Tenancy.tenancy_class
  end
end
