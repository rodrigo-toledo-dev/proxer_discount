class ClientDiscount < ApplicationRecord
  belongs_to :client
  belongs_to :discount
end
