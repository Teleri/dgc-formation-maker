class AddSlideCountToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :slide_count, :integer
  end
end
