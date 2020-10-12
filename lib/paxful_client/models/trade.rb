module PaxfulClient
  class Trade

    include Virtus.model

    attribute :status, String
    attribute :trade_hash, String
    attribute :offer_hash, String
    attribute :offer_type, String
    attribute :fiat_currency_code, String
    attribute :crypto_currency_code, String
    attribute :fiat_amount_requested, BigDecimal
    attribute :crypto_amount_requested, BigDecimal
    attribute :payment_method_name, String
    attribute :started_at, String
    attribute :ended_at, String
    attribute :completed_at, String
    attribute :seller, String
    attribute :buyer, String

  end
end
