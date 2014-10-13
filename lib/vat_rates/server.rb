module VATRates
  class Server
    
    def call(env)
      body = {
        :rates => VATRates.countries.map(&:to_hash),
        :details => "http://github.com/adamcooke/vat-rates"
      }.to_json
      [200, {'Content-Length' => body.bytesize.to_s, 'Content-Type' => 'application/json'}, [body]]
    end
    
  end
end
