class AddUserIdToCreditCards < ActiveRecord::Migration[6.0]
  def change
    add_column :credit_cards, :user_id, :integer
    add_index :credit_cards, :user_id
  end
end
