module Tenancy
  class Railtie < Rails::Railtie
    initializer 'tenancy' do |app|
      app.config.middleware.use Tenancy::Middleware
    end
  end
end