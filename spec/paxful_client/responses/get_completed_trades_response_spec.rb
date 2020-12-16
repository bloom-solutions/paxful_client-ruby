require "spec_helper"

module PaxfulClient
  RSpec.describe GetCompletedTradesResponse do

    describe "#success" do
      context "empty body" do
        let(:response) { described_class.new }
        let(:empty_response) { described_class.new }

        it "fails" do
          json = { data: { trades: ["hello"] } }.with_indifferent_access
          expect(response).to receive(:parsed_body).at_most(3).times
            .and_return(json)
          expect(response).to receive(:code).and_return(200)
          expect(response).to be_success

          expect(empty_response).to receive(:parsed_body).at_most(3).times
            .and_return({})
          expect(empty_response).to receive(:code).and_return(200)
          expect(empty_response).not_to be_success
        end
      end
    end

  end
end
