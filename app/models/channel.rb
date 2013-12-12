class Channel < ActiveRecord::Base
    has_many :accounts
end
