# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iso_3166_2_jp/version'

Gem::Specification.new do |spec|
  spec.name          = "iso_3166_2_jp"
  spec.version       = ISO3166_2JP::VERSION
  spec.authors       = ["chu"]
  spec.email         = ["chu@ecpplus.net"]

  spec.summary       = 'ISO3166-2 JP codes'
  spec.description   = %q{ISO3166-2 JP prefecture codes.\nSee https://www.iso.org/obp/ui/#iso:code:3166:JP}
  spec.homepage      = "https://github.com/ecpplus/iso3166_2_jp"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
