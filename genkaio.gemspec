require_relative 'lib/genkaio/version'

Gem::Specification.new do |spec|
  spec.name          = "genkaio"
  spec.version       = Genkaio::VERSION
  spec.authors       = ["haruna"]
  spec.email         = ["eggplants@github.com"]

  spec.summary       = %q{A cheat tool for genkai-shiritori}
  spec.description   = %q{This enables you to search words of ipadic-NEologd by an inicial and length of target word (like "あ10")}
  spec.homepage      = "https://github.com/eggplants/genkaio"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = "https://github.com/eggplants/genkaio"
  spec.metadata["source_code_uri"] = "https://github.com/eggplants/genkaio"
  spec.metadata["changelog_uri"] = "https://github.com/eggplants/genkaio/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["genkaio"]
  spec.require_paths = ["lib"]
end
