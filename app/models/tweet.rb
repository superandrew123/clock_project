class Tweet < ActiveRecord::Base
  belongs_to :individual, inverse_of: :tweets
end