module PaxfulClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)

    api_action :get_balance
    api_action :get_completed_trades

    attribute :host, String
    attribute :key, String
    attribute :secret, String

    private

    def default_opts
      { host: host, key: key, secret: secret }
    end

  end
end
