# == Schema Information
#
# Table name: moves
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  damage            :integer          not null
#  created_at        :datetime
#  updated_at        :datetime
#  pocket_monster_id :integer
#

class Move < ActiveRecord::Base
  belongs_to(
    :pocket_monster,
    primary_key: :id,
    foreign_key: :pocket_monster_id,
    class_name: "PocketMonster"
    )
end
