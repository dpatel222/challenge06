class Customer < ApplicationRecord


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
  end


  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end


  validates :full_name, presence: true

  has_one_attached :image
end
