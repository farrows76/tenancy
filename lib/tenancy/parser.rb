require 'public_suffix'
##
# Parses the request and returns the unique identifier for the tenant
#
module Tenancy
  class Parser
    attr_reader :host

    def initialize(host)
      @host = host
    end

    def parse
      subdomain(host)
    end

    protected

    # *Almost* a direct ripoff of ActionDispatch::Request subdomain methods

    # Only care about the first subdomain for the database name
    def subdomain(host)
      subdomains(host).first
    end

    def subdomains(host)
      host_valid?(host) ? parse_host(host) : []
    end

    def host_valid?(host)
      !ip_host?(host) && domain_valid?(host)
    end

    def ip_host?(host)
      !/^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$/.match(host).nil?
    end

    def domain_valid?(host)
      PublicSuffix.valid?(host, ignore_private: true)
    end

    def parse_host(host)
      (PublicSuffix.parse(host).trd || '').split('.')
    end
  end
end
