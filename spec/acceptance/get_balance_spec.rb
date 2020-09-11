require "spec_helper"

RSpec.describe "Get wallet balance", vcr: { record: :once } do

  it "returns the balance" do
    client = PaxfulClient.new(
      host: CONFIG[:host],
      key: CONFIG[:key],
      secret: CONFIG[:secret],
    )

    get_balance_response = client.get_balance

    wallet = get_balance_response.wallet
    expect(wallet.balance).to eq 153380
    expect(wallet.incoming_amount).to eq 0
    expect(wallet.balance_escrow).to eq 0
  end

end
