class Tour < ActiveRecord::Base
  has_many :places, :dependent => :destroy
end
