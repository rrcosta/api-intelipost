class PackageInvoice
  include Virtus.model

  attribute :number, String
  attribute :key, String
  attribute :date, DateTime
end 
