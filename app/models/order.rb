class Order < ActiveRecord::Base
  attr_accessible :type, :password, :people_attributes
  has_many :people
  accepts_nested_attributes_for :people, allow_destroy: true

  validates_presence_of :password, message: ''
  validates_format_of :password, with: /wedding/i, message: 'The password supplied was not correct'
end
