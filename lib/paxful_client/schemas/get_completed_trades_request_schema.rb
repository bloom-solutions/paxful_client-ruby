module PaxfulClient
  if not Dry::Validation.const_defined?("Schema")
    GetCompletedTradesRequestSchema = BaseRequestSchema
  end
end
