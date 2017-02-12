class AddDoneflagToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :doneflag, :boolean
  end
end
