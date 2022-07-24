class Article < ApplicationRecord
  include Visible

  # validates
  validates :content, presence: true

  # relationship
  belongs_to :user

  # enum
  enum state: { 
                published: 0,
                friendly: 1,
                draft: 2
              }
  
end
