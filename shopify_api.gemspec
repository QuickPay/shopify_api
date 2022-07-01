# frozen_string_literal: true

$LOAD_PATH.push(File.expand_path("../lib", __FILE__))
require "shopify_api/version"

Gem::Specification.new do |gem|
  gem.name = "shopify_api"
  gem.version = ShopifyAPI::VERSION
  gem.author = ["QuickPay"]

  gem.summary = "The gem for accessing the Shopify API"
  gem.description = <<~HERE
    This gem allows Ruby developers to programmatically access the admin
    section of Shopify stores.
  HERE
  gem.email = ["support@quickpay.net"]
  gem.homepage = "http://quickpay.net"

  gem.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/QuickPay"

  gem.extra_rdoc_files = [
    "LICENSE",
    "README.md",
  ]
  gem.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    %x(git ls-files -z).split("\x0").reject { |f| f.match(%r{^(test)/}) }
  end

  gem.rdoc_options = ["--charset=UTF-8"]

  gem.license = "MIT"

  gem.required_ruby_version = ">= 2.6"

  gem.add_runtime_dependency("concurrent-ruby")
  gem.add_runtime_dependency("hash_diff")
  gem.add_runtime_dependency("httparty")
  gem.add_runtime_dependency("jwt")
  gem.add_runtime_dependency("oj")
  gem.add_runtime_dependency("securerandom")
  gem.add_runtime_dependency("sorbet-runtime")
  gem.add_runtime_dependency("zeitwerk", "~> 2.5")

  gem.add_development_dependency("activesupport")
  gem.add_development_dependency("rake")
  gem.add_development_dependency("rubocop")
  gem.add_development_dependency("rubocop-shopify")
  gem.add_development_dependency("rubocop-sorbet")
  gem.add_development_dependency("sorbet")
  gem.add_development_dependency("tapioca")
end
