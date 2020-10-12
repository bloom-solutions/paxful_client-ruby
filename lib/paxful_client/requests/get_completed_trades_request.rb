module PaxfulClient
  class GetCompletedTradesRequest < BaseRequest

    private

    def path
      "/trade/completed"
    end

    def headers
      {
        "Accept" => "application/json",
        "Content-Type" => "text/plain",
      }
    end

    def default_action
      :post
    end

  end
end
