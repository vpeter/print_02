class PaperCategory < ActiveRecord::Base
  has_many :paper_types, :dependent => :destroy
  validates_presence_of :nev
  acts_as_chainable :to => :paper_types, :root => true
end
