class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates :hourly_rate, numericality: { only_integer: true }
  
end
