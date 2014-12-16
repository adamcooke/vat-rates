module VATRates
  module DSL

    class RootDSL
      def country(&block)
        country = Country.new
        CountryDSL.new(country).instance_eval(&block)
        country
      end

      def self.load_from(path)
        dsl = self.new
        Dir[path].map do |file|
          dsl.instance_eval(File.read(file))
        end
      end
    end

    class CountryDSL
      def initialize(country)
        @country = country
      end

      def name(name)
        @country.name = name
      end

      def code(code)
        @country.code = code
      end

      def country_code(code)
        @country.country_code = code
      end

      def period(&block)
        period = Period.new(@country)
        PeriodDSL.new(period).instance_eval(&block)
        @country.periods << period
        period
      end
    end

    class PeriodDSL
      def initialize(period)
        @period = period
      end

      def effective_from(*date_args)
        @period.effective_from = Date.new(*date_args)
      end

      def rate(type, amount)
        @period.rates << Rate.new(self, type, amount)
      end
    end

  end
end
