class Individual < ActiveRecord::Base
  has_many :quotes, inverse_of: :individual
  has_many :tweets, inverse_of: :individual
end