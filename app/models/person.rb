class Person < ActiveRecord::Base
  before_validation :full_name
  before_validation :validate

  attr_accessible :desert, :first_name, :last_name, :main_course, :starter

  validates_uniqueness_of :full_name, message: "It looks like you've already ordered, please contact Sam or Jamie if you haven't or would like to change your order"
  validates_presence_of :first_name, message: 'Please supply your first name'
  validates_presence_of :last_name, message: 'Please supply your last name'
  validates_presence_of :starter, message: 'Please choose a starter'
  validates_presence_of :main_course, message: 'Please choose a main course'
  validates_presence_of :desert, message: 'Please choose a desert'

  def validate
    errors.add(:first_name, "") && errors.add(:last_name, "") if Person.find_by_full_name(self.full_name)
    errors.add(:first_name, "") && errors.add(:last_name, "") if self.last_name.blank?
  end

  def full_name
    self.full_name = "#{self.first_name} #{self.last_name}"
  end
end
