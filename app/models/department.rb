class Department < ActiveRecord::Base
  extend Enumerize
  belongs_to :customer

  enumerize :stato, in: {DISTATTIVO:0, ATTIVO:1}

  def to_s
    self.customer
  end


  rails_admin do
    edit do
      configure :customer do
        hide
      end
      end
  end
end
