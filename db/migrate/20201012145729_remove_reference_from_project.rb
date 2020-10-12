class RemoveReferenceFromProject < ActiveRecord::Migration[6.0]
  def change
    remove_reference :projects, :slide, null: false, foreign_key: true
  end
end
