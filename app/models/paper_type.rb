class PaperType < ActiveRecord::Base
  belongs_to c
  has_many :paper_weight_prices, :dependent => :destroy
  has_many :order_items
  validates_presence_of :nev
  acts_as_chainable :to => :paper_weight_prices, :from => :paper_category
end
