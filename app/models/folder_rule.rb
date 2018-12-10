class FolderRule < ApplicationRecord
  belongs_to :folder
  belongs_to :rule
end
