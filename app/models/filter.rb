class Filter < ApplicationRecord
  belongs_to :property
  belongs_to :condition
end
