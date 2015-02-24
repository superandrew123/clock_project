class Individual < ActiveRecord::Base
  has_many :quotes
  has_many :tweets
end