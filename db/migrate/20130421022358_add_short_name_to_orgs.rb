class AddShortNameToOrgs < ActiveRecord::Migration
  def change
    add_column :organizations, :slug, :string
  end
end
