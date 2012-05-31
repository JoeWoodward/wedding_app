class Person < ActiveRecord::Base
  attr_accessible :desert, :first_name, :last_name, :main_course, :starter
  validates_presence_of :desert
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :main_course
  validates_presence_of :starter
end
