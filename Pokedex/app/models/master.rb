# == Schema Information
#
# Table name: masters
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  hometown   :string(255)      not null
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Master < ActiveRecord::Base
  has_many(
      :pocket_monsters,
      primary_key: :id,
      foreign_key: :master_id,
      class_name: "PocketMonster"
      )
      
  has_many(
      :moves,
      primary_key: :id,
      foreign_key: :pocket_monster_id,
      class_name: "Move",
      through: :pocket_monsters
  )
  
  validates :name, :hometown, presence: true
  validates :name, uniqueness: true
  
  validate :email_must_have_at_symbol
  
  def email_must_have_at_symbol
    unless self.email.nil? || self.email.include?("@")
      errors[:email] << "email must have @ symbol"
    end
  end
  
end
