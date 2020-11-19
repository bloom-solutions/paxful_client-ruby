require "paxful_client/version"
require "api_client_base"
require "dry-validation"

require "json"
require "active_support/core_ext/hash/indifferent_access"
require "openssl"

require "paxful_client/client"
require "paxful_client/models/order_book"
require "paxful_client/models/trade"
require "paxful_client/models/wallet"
require "paxful_client/requests/base_request"
require "paxful_client/requests/get_balance_request"
require "paxful_client/requests/get_completed_trades_request"
require "paxful_client/responses/base_response"
require "paxful_client/responses/get_balance_response"
require "paxful_client/responses/get_completed_trades_response"
require "paxful_client/schemas/base_request_schema"
require "paxful_client/schemas/get_balance_request_schema"
require "paxful_client/schemas/get_completed_trades_request_schema"

module PaxfulClient
  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String
    has :key, classes: String
    has :secret, classes: String
  end
end
