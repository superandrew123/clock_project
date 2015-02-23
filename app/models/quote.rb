class Quote < ActiveRecord::Base
  belongs_to :individual, inverse_of: :quotes
end