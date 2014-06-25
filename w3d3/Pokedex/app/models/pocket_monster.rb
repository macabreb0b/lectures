# == Schema Information
#
# Table name: pocket_monsters
#
#  id             :integer          not null, primary key
#  name           :string(255)      not null
#  monster_type   :string(255)      not null
#  hp             :integer          not null
#  strength       :integer          not null
#  level          :integer          default(1), not null
#  master_id      :integer          not null
#  created_at     :datetime
#  updated_at     :datetime
#  monster_type_2 :string(255)
#  fainted        :boolean
#

class PocketMonster < ActiveRecord::Base
  belongs_to(
    :master,
    primary_key: :id,
    foreign_key: :master_id,
    class_name: "Master"
  )
  
  has_many(
    :moves,
    primary_key: :id,
    foreign_key: :pocket_monster_id,
    class_name: "Move"
  )
  
  validates :name, :monster_type, :level, :hp, :strength,
        :master_id, :presence => true
  validates :monster_type, inclusion: {in: ["Electric", "Water", "Fire", "Flying"]}
  
  validates :fainted, inclusion: {in: [true, false]}

  
  before_validation :set_defaults
  
  def set_defaults
    self.strength = 1 if self.strength == nil
    self.hp = 10 if self.hp == nil
  end
end
