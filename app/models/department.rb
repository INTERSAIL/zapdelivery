class Department < ActiveRecord::Base
  extend Enumerize
  belongs_to :customer

  enumerize :stato, in: {DISTATTIVO:0, ATTIVO:1}
end
