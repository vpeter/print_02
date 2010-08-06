class PaperWeightPrice < ActiveRecord::Base
  belongs_to :paper_type
  has_many :order_items
  validates_presence_of :nev
  acts_as_chainable :select_label => "tömeg", :from => :paper_type
end
