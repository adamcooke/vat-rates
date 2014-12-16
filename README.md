# VAT Rates

This repository is a collection of all VAT rates for EU countries. It's primary purpose is to render a JSON hash containing all rates which can be consumed by web applications. 

This JSON payload is provided free of charge at http://jsonvat.com.

The primary purpose for creating this is because of changes in the VAT rules which require some companies to invoice their customers in the customer's own VAT rate rather than theirs.

## Important Notes

This information is provided on an as-is basis. The authors or contributors cannot be held responsible for its accuracy or completeness. You use the data provided by jsonvat.com entirely at your own risk.

The API returns the standard & reduced VAT rates for EU countries. In some circumstances, you may need to charge other rates for certain types of product. For a full list, see this document.

## Updating VAT Rates

While I will do my best to keep VAT rates up to date, any pull requests with updated information will be gratefully received. To add a new VAT rate, simply add a `period` section to the appropriate file in the `rates` directory. For example:

```ruby
period do
  effective_from 2014, 1, 10
  rate :reduced, 10
  rate :standard, 20s
end
```

A small change.
