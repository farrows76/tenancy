module Tenancy
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_files
      template "tenancy.rb", File.join("config", "initializers", "tenancy.rb")
    end
  end
end