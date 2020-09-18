class AddMemberListToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :member_list, :string
  end
end
