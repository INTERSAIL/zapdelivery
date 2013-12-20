class Account < ActiveRecord::Base
  has_many :assignments
  has_many :users, through: :assignments
  has_many :shipments

  belongs_to :customer
  belongs_to :channel


end
