module VATRates
  class Rate
    
    attr_accessor :type, :amount
    
    def initialize(period, type, amount)
      @period = period
      @type, @amount = type, amount
    end
    
  end
end