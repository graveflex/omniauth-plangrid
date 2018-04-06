$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'omniauth-plangrid/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-plangrid"
  spec.version       = OmniAuth::PlanGrid::VERSION
  spec.authors       = ["Nick Lewis"]
  spec.email         = ["tonicklewis@gmail.com"]

  spec.summary       = "A omniauth-oauth2 strategy for PlanGrid"
  spec.description   = "PlanGrid OmniAuth-OAuth2 strategy"
  spec.homepage      = "https://graveflex.com"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.4'
  spec.add_development_dependency 'bundler', '~> 1.16'
end
