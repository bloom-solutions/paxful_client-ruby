module PaxfulClient
  class BaseRequest

    include APIClientBase::Request

    attribute :key,    String
    attribute :secret, String

    private

    def body
      nonce = Time.now.to_i
      apiseal = OpenSSL::HMAC.hexdigest(
        "SHA256",
        secret,
        "apikey=#{key}&nonce=#{nonce}",
      )

      [
        "apikey=#{key}",
        "nonce=#{nonce}",
        "apiseal=#{apiseal}",
      ].join("&")
    end

  end
end
