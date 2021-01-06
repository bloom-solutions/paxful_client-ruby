module PaxfulClient
  class GetBalanceResponse < BaseResponse

    attribute :wallet, PaxfulClient::Wallet, lazy: true, default: :default_wallet
    attribute :body, Object, lazy: true, default: :default_body
    attribute :parsed_body, String, lazy: true, default: :default_parsed_body

    private

    def default_success
      unless parsed_body['data'].present?
        self.error_message = 'GetBalanceResponse: data not present'
        return false
      end
      raw_response.success?
    end

    def default_wallet
      args = parsed_body["data"].each_with_object({}) do |(attr, val), hash|
        hash[attr.underscore] = val
      end

      Wallet.new(args)
    end

    def default_body
      raw_response.body
    end

    def default_parsed_body
      JSON.parse(body).with_indifferent_access
    end

  end
end
