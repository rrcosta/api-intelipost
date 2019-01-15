class Package
  include Virtus.model

  attribute :package_id, Integer
  attribute :package_invoice, Api::Orders::PackageInvoice
end 
