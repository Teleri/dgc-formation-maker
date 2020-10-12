class AddReferenceToSlide < ActiveRecord::Migration[6.0]
  def change
    add_reference :slides, :project, null: false, foreign_key: true
  end
end
