module Tenancy
  class Config
    attr_accessor :tenancy_class, :subdomain_column, :excluded_models

    def initialize
      @tenancy_class      = 'Tenant'
      @subdomain_column   = 'subdomain'
      @excluded_models    = %w(Tenant)
    end
  end
end