class Visitor < ActiveRecord::Base
  has_one :visitor_email
  accepts_nested_attributes_for :visitor_email
  
  validates_presence_of :name, :email

  def first_name
    name.split(" ").first
  end
end
