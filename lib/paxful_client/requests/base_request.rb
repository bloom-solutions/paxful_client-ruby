module PaxfulClient
  class BaseRequest

    include APIClientBase::Request

    attribute :key,    String
    attribute :secret, String
    attribute :page, Integer, default: 1

    private

    def body
      nonce = Time.now.to_i
      apiseal = OpenSSL::HMAC.hexdigest(
        "SHA256",
        secret,
        "apikey=#{key}&nonce=#{nonce}&page=#{page}",
      )

      [
        "apikey=#{key}",
        "nonce=#{nonce}",
        "page=#{page}",
        "apiseal=#{apiseal}",
      ].join("&")
    end

  end
end
