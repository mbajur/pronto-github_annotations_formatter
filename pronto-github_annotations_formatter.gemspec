# frozen_string_literal: true

require_relative "lib/pronto/github_annotations_formatter/version"

Gem::Specification.new do |spec|
  spec.name = "pronto-github_annotations_formatter"
  spec.version = Pronto::GithubAnnotationsFormatter::VERSION
  spec.authors = ["mbajur"]
  spec.email = ["mbajur@gmail.com"]

  spec.summary = "Github actions annotations formatter for Pronto"
  spec.description = "Github actions annotations formatter for Pronto"
  spec.homepage = "https://github.com/mbajur/pronto-github_annotations_formatter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "pronto"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
