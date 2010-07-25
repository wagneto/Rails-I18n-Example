class Product < ActiveRecord::Base
  translates :title, :description
  globalize_accessors :en, :fr, :ja
  
  has_attached_file :image
  
  validates :title, :presence => true, :uniqueness => true
  validates :unit_price, :presence => true, :numericality => true
  validates :unit, :presence => true
  
  def to_f
    self.unit_price.to_f
  end
  
  def to_s
    self.title
  end
end
