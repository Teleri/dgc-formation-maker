class AddSlideCountToSlide < ActiveRecord::Migration[6.0]
  def change
    add_column :slides, :slide_count, :integer
  end
end
