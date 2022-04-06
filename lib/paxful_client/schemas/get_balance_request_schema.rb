module PaxfulClient
  if not Dry::Validation.const_defined?("Schema")
    GetBalanceRequestSchema = BaseRequestSchema
  end
end
