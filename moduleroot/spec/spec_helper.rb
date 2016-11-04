require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-facts'
include RspecPuppetFacts

unless RUBY_VERSION =~ %r{^1.9}
  require 'coveralls'
  require 'simplecov'
  require 'simplecov-console'
  SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console,
    Coveralls::SimpleCov::Formatter
  ]
  SimpleCov.start do
    add_filter '/spec'
  end
end

<%- [@configs['spec_overrides']].flatten.compact.each do |line| -%>
 <%= line %>
<%- end -%>

# vim: syntax=ruby
