module VATRates
  class Server
    
    def call(env)
      body = {
        :details => "http://github.com/adamcooke/vat-rates",
        :rates => VATRates.countries.map(&:to_hash)
      }.to_json
      [200, {'Content-Length' => body.bytesize.to_s, 'Content-Type' => 'application/json'}, [body]]
    end
    
  end
end
