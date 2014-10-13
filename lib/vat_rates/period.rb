module VATRates
  class Period
    
    attr_accessor :type, :amount, :effective_from
    attr_reader :country
    attr_reader :rates
    
    def initialize(country)
      @country = country
      @rates = []
    end
    
    def effective_from
      @effective_from || nil
    end
    
    def to_hash
      {
        :effective_from => self.effective_from ? self.effective_from.strftime("%Y-%m-%d") : nil,
        :rates => @rates.inject(Hash.new) { |h, rate| h[rate.type] = rate.amount.to_f; h }
      }
    end
    
  end
end
