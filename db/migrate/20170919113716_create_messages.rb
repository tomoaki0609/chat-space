class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer      :user_id,       null: false, unique:true
      t.integer      :group_id,       null: false, unique:true
      t.text         :body,           null: false

      t.timestamps
    end
  end
end
