require 'test_helper'

class Tenancy::Config::Test < ActiveSupport::TestCase
  def teardown
    Tenancy.configure {}
    Tenancy.config = nil
  end

  test "should set config defaults" do
    assert_equal "Tenant", Tenancy.config.tenancy_class
    assert_equal "subdomain", Tenancy.config.subdomain_column
    assert_equal %w(Tenant), Tenancy.config.excluded_models
  end

  test "should set config from initializer file" do
    Tenancy.configure do |config|
      config.tenancy_class = 'Account'
      config.excluded_models = %w(Account User)
      config.subdomain_column = 'account_number'
    end

    assert_equal "Account", Tenancy.config.tenancy_class
    assert_equal "account_number", Tenancy.config.subdomain_column
    assert_equal %w(Account User), Tenancy.config.excluded_models
  end
end
