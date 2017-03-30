##
# Tenancy Configuration
#
Tenancy.configure do |config|
  ##
  # Set the model that will be storing the tenants unique identifier. Can be set as either a
  #   class name or a string. 
  # A typical example would be a Tenant or Account model that stores each Tenant's information.
  #
  # config.tenancy_class = 'Tenant'

  ##
  # Set the column in the config.tenancy_class table that will be the unique identifier.
  # An example would be the 'subdomain', or 'account_number'.
  #
  # config.identifier_column = 'subdomain'


  ##
  # Add any models that you do not want to be multi-tenanted, but remain in the global (public) namespace.
  # A typical example would be a Customer or Tenant model that stores each Tenant's information.
  #
  # config.excluded_models = %w{ Tenant }
end