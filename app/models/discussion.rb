class Discussion < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiever, class_name: "User"
  # has_many :messages
end
