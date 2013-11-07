class Contact
  extend ActiveModel::Naming
  include ActiveModel::Validations
  include ActiveModel::Conversion
  include ActiveModel::AttributeMethods

  attr_accessor :name, :email, :message
 
  validates :name, :email, :message, presence: true
  validates :name, :email, length: { maximum: 255 }

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
end
