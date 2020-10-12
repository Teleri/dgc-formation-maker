class RemoveMemberFromSlides < ActiveRecord::Migration[6.0]
  def change
    remove_reference :slides, :member, null: false, foreign_key: true
  end
end
