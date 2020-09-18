class RemoveSlidesCountFromSlide < ActiveRecord::Migration[6.0]
  def change
    remove_column :slides, :slide_count, :integer
  end
end
