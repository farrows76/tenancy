module Tenancy
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      request  = Rack::Request.new(env)
      identifier = Parser.new(request.host).parse
      #
      # env['Current-Tenant'] = detector.detect

      @app.call(env)
    end
  end
end