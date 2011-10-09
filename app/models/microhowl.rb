class Microhowl < ActiveRecord::Base
  belongs_to :werewolf
  validates :content, :length => { :maximum => 140 }
end
