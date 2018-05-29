# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "ceevee"
  spec.version       = "0.1.0"
  spec.authors       = ["Mathias Schaeffner"]
  spec.email         = ["mschaeffner@example.com"]

  spec.summary       = "A Jekyll theme for a personal website"
  spec.homepage      = "https://github.com/mschaeffner/ceevee"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
