require "paxful_client/version"
require "api_client_base"

require "json"
require "active_support/core_ext/hash/indifferent_access"
require "openssl"

require "paxful_client/client"
require "paxful_client/models/wallet"
require "paxful_client/requests/get_balance_request"
require "paxful_client/responses/get_balance_response"

module PaxfulClient
  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String
    has :key, classes: String
    has :secret, classes: String
  end
end
