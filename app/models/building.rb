class Building < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_STATE = /^[a-zA-Z]+$/
  VALID_CODE = /^[\d]+$/

  validates_presence_of :street_address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :postal_code

  validates_length_of :state, :is => 2
  validates_length_of :postal_code, :is => 5
  validates_format_of :state, with: VALID_STATE, multiline: true
  validates_format_of :postal_code, with: VALID_CODE, multiline: true

end
