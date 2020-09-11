module PaxfulClient
  class Wallet

    include Virtus.model

    attribute :balance, BigDecimal
    attribute :incoming_amount, BigDecimal
    attribute :balance_escrow, BigDecimal

  end
end
