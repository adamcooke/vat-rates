country do

  name 'France'
  code 'FR'
  country_code 'FR'

  period do
    effective_from 2014, 1, 1
    rate :super_reduced, 2.1
    rate :reduced1, 5.5
    rate :reduced2, 10
    rate :standard, 20
  end  

  period do
    effective_from 2012, 1, 1
    rate :super_reduced, 2.1
    rate :reduced1, 5.5
    rate :reduced2, 7
    rate :standard, 19.6
  end

  period do
    rate :super_reduced, 2.1
    rate :reduced1, 5.5
    rate :standard, 19.6
  end

end
