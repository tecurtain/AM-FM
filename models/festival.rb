class Festival < ActiveRecord::Base

  belongs_to :owner, :class_name => 'User', :foreign_key => 'owner_id'
  has_and_belongs_to_many :users

  validates :name, :location, presence: true
  validates :name, :location, uniqueness: true

  def print_values
    "#{self.name}"
  end

end
