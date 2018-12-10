class Rule < ApplicationRecord
  has_many :filters, through: :rule_filter
  has_many :actions, through: :rule_action
end
