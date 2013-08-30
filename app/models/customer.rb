class Customer < ActiveRecord::Base
  extend Enumerize
  has_many :departments

  enumerize :stato, in: {DISTATTIVO:0, ATTIVO:1}
end
