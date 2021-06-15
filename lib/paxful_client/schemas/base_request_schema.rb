module PaxfulClient
  class BaseRequestSchema < Dry::Validation::Contract

    params do
      required(:key).filled(:string)
      required(:secret).filled(:string)
    end

  end
end
