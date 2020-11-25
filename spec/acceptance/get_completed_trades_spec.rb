require "spec_helper"

RSpec.describe "Get completed trades", vcr: { record: :once } do

  let(:client) do 
    PaxfulClient.new(
      host: CONFIG[:host],
      key: CONFIG[:key],
      secret: CONFIG[:secret],
    )
  end

  it "returns the completed trades" do
    get_completed_trades_response = client.get_completed_trades
    order_book = get_completed_trades_response.order_book

    expect(get_completed_trades_response).to be_success
    expect(order_book.status).to eq "success"
    expect(order_book.timestamp).to be_present
    expect(order_book.count).to be_present
    expect(order_book.page).to eq 1
    expect(order_book.trades).to be_present
    expect(order_book.trades.first).to be_a PaxfulClient::Trade
  end

  it "supports passing in a 'page' param" do
    get_completed_trades_response = client.get_completed_trades(page: 2)
    order_book = get_completed_trades_response.order_book

    expect(get_completed_trades_response).to be_success
    expect(order_book.status).to eq "success"
    expect(order_book.timestamp).to be_present
    expect(order_book.count).to be_present
    expect(order_book.page).to eq 2
    expect(order_book.trades).to be_present
    expect(order_book.trades.first).to be_a PaxfulClient::Trade
  end

end
