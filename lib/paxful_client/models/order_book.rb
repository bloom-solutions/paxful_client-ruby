module PaxfulClient
  class OrderBook

    include Virtus.model

    attribute :status, String
    attribute :timestamp, Integer
    attribute :count, Integer
    attribute :page, Integer
    attribute :trades, Array

  end
end
