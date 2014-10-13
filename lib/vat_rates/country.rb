module VATRates
  class Country
    
    attr_accessor :name, :code
    attr_reader :periods
    
    def initialize
      @periods = []
    end
    
    def to_hash
      {
        :name => name,
        :code => code,
        :periods => periods.sort_by { |p| p.effective_from }.reverse.map(&:to_hash)
      }
    end
    
  end
end
