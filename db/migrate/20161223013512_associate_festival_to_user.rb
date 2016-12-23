class AssociateFestivalToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :festivals do |t|
      t.belongs_to :owner
    end
  end
end
