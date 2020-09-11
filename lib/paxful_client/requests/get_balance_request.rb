module PaxfulClient
  class GetBalanceRequest

    include APIClientBase::Request.module(action: :post)

    attribute :key,    String
    attribute :secret, String

    private

    def path
      "/wallet/balance"
    end

    def headers
      {
        "Accept" => "application/json",
        "Content-Type" => "text/plain",
      }
    end

    def body
      nonce = Time.now.to_i
      payload = "apikey=#{key}&nonce=#{nonce}"
      apiseal = OpenSSL::HMAC.hexdigest("SHA256", secret, payload)

      "apikey=#{key}&nonce=#{nonce}&apiseal=#{apiseal}"
    end

  end
end
