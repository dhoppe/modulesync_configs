require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-facts'
include RspecPuppetFacts
<%- [@configs['spec_overrides']].flatten.compact.each do |line| -%>
 <%= line %>
<%- end -%>
