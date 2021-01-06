require "spec_helper"

module PaxfulClient
  RSpec.describe GetBalanceResponse do

    describe "#success" do
      context "empty data body" do
        let(:response) { described_class.new }
        let(:empty_response) { described_class.new }

        it "fails" do
          json = {
            data: { incoming_amount: 1000, balance: 1000 }
          }.with_indifferent_access
          response.parsed_body = json
          response.raw_response = double(Typhoeus::Response, success?: true)
          expect(response).to be_success

          empty_response.parsed_body = {}
          empty_response.raw_response = double(Typhoeus::Response, {
            success?: true,
          })
          expect(empty_response).not_to be_success
          expect(empty_response.error_message)
            .to eq "GetBalanceResponse: data not present"
        end
      end
    end

  end
end
