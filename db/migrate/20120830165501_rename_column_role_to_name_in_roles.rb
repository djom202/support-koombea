class RenameColumnRoleToNameInRoles < ActiveRecord::Migration
  def change
    rename_column :roles, :role, :name
  end

end
