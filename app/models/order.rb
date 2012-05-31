class Order < ActiveRecord::Base
  attr_accessible :type, :people_attributes
  has_many :people
  accepts_nested_attributes_for :people, allow_destroy: true
end
