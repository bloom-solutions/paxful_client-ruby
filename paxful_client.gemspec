require_relative 'lib/paxful_client/version'

Gem::Specification.new do |spec|
  spec.name          = "paxful_client"
  spec.version       = PaxfulClient::VERSION
  spec.authors       = ["Mark Chavez"]
  spec.email         = ["mjfchavez@gmail.com"]

  spec.summary       = %q{API wrapper for Paxful}
  spec.description   = %q{API wrapper for Paxful}
  spec.homepage      = "https://github.com/MarkFChavez/paxful_client-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MarkFChavez/paxful_client-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/MarkFChavez/paxful_client-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "api_client_base"
  spec.add_dependency "typhoeus"
  spec.add_dependency "activesupport"
  spec.add_dependency "dry-validation", "~> 0.13"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.3"
end
