class Folder < ApplicationRecord
  belongs_to :storage
  has_many :rules, through: :folder_rule
end