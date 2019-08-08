class RemoveDescriptionFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :description, :text
  end
end
