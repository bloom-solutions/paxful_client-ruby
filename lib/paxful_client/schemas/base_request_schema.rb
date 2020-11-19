module PaxfulClient
  BaseRequestSchema = Dry::Validation.Schema do

    required(:key).filled(:str?)
    required(:secret).filled(:str?)

  end
end
