class AddReferenceToProject < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :slide, null: false, foreign_key: true
  end
end
