$:.unshift File.expand_path(File.join('..', 'lib'), __FILE__)
require 'vat_rates'
require 'vat_rates/server'
run VATRates::Server.new