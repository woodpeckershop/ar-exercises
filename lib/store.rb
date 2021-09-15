class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, length: { in: 0..Float::INFINITY }
  validate :sells_either_mens_or_womens_apparel
  attr_accessor :missing_apparel

  def sells_either_mens_or_womens_apparel
    if (!self.mens_apparel && !self.womens_apparel)
      errors.add(:missing_apparel, "Store must carry at least one of the men's or women's apparel")
    
    end
  end
  
  # validate :men_or_women_apparel

  # def men_or_women_apparel
  #   if !mens_apparel && !womens_apparel
  #     errors.add("Store must carry at least one of the men's or women's apparel")
  #   end
  # end
end
