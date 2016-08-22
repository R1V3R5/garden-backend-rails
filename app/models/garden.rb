class Garden < ApplicationRecord
  has_many :garden_journals
  belongs_to :user
end
