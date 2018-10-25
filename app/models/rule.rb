class Rule < ApplicationRecord
	belongs_to :folder
	belongs_to :property
	belongs_to :condition
	belongs_to :action
end
