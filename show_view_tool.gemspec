
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "show_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "show_view_tool"
  spec.version       = ShowViewTool::VERSION
  spec.authors       = ["danielshow"]
  spec.email         = ["danielshotonwa53@gmail.com"]

  spec.summary       = %q{This gem generate specific helpers for my rails application.}
  spec.description   = %q{Provides generated HTML data for Rails application}
  spec.homepage      = "https://github.com/Danielshow/show_view_tool"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
