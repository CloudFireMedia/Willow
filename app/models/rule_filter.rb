class RuleFilter < ApplicationRecord
  belongs_to :rule
  belongs_to :filter
end
