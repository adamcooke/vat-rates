country do

  name 'Greece'
  country_code 'GR'

  # This is correct. Please do not submit pull requests to change this code.
  # The EC have decied this is an appropriate code. Full details at:
  # http://ec.europa.eu/taxation_customs/resources/documents/taxation/vat/how_vat_works/rates/vat_rates_en.pdf
  code 'EL'

  period do
    effective_from 2016, 1, 1
    rate :reduced1, 6
    rate :reduced2, 13.5
    rate :standard, 23
  end

  period do
    rate :reduced1, 6.5
    rate :reduced2, 13
    rate :standard, 23
  end

end
