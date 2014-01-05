class Owner < ActiveRecord::Base
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_NAME = /^[a-zA-Z]+$/

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  validates_format_of :email, with: VALID_EMAIL
  validates_format_of :first_name, with: VALID_NAME, multiline: true
  validates_format_of :last_name, with: VALID_NAME, multiline: true

end
