require 'date'
require 'json'

require 'vat_rates/country'
require 'vat_rates/period'
require 'vat_rates/rate'
require 'vat_rates/dsl'

module VATRates
  
  # Stores all countries
  def self.countries
    @countries ||= begin
      VATRates::DSL::RootDSL.load_from(File.expand_path(File.join('..', '..', 'rates', '*'), __FILE__))
    end
  end
  
end
