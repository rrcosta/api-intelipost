class Event
  include Virtus.model

  attribute :status_id, Integer
  attribute :date, DateTime
end 
