require 'tenancy/railtie' if defined?(Rails)
require 'tenancy/version'
require 'tenancy/config'
require 'tenancy/middleware'
require 'tenancy/parser'

module Tenancy
  # configure tenancy with available options
  def self.configure
    yield config
  end

  def self.config
    @config ||= Config.new
  end

  def self.config=(config)
    @config = config
  end

  # Convert the config.tenancy_class to and Object
  def self.tenancy_class
    if config.tenancy_class.is_a?(String)
      Object.const_get(config.tenancy_class)
    else
      config.tenancy_class
    end
  end
end
