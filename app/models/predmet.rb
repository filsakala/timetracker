class Predmet < ActiveRecord::Base
  has_many :cas, dependent: :destroy
end
