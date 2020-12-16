module PaxfulClient
  class GetCompletedTradesResponse < BaseResponse

    attribute :order_book, PaxfulClient::OrderBook, lazy: true, default: :default_order_book

    private

    def default_order_book
      status = parsed_body["status"]
      timestamp = parsed_body["timestamp"]
      args = parsed_body["data"]

      order_book = OrderBook.new
      order_book.status = status
      order_book.timestamp = timestamp
      order_book.count = args["count"]
      order_book.page = args["page"]
      order_book.trades = args["trades"].map do |trade_hash|
        Trade.new(trade_hash)
      end

      order_book
    end

    def default_success
      code == 200 && present_parsed_body?
    end

    def present_parsed_body?
      !parsed_body.nil? &&
        !parsed_body["data"].nil? &&
        !parsed_body["data"]["trades"].nil?
    end

  end
end
