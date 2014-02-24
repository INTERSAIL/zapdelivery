class Customer < ActiveRecord::Base
  extend Enumerize
  has_many :departments
  has_many :accounts

  enumerize :stato, in: {DISTATTIVO:0, ATTIVO:1}

  accepts_nested_attributes_for :departments

  def title
    self.ragione_sociale
  end

  #attr_accessible :customer_ids
end