class AddImageToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :image, :text
  end
end
