class CreateUserIdols < ActiveRecord::Migration[6.0]
  def change
    create_table :user_idols do |t|
      t.references :user, foreign_key: true
      t.references :idol, foreign_key: true

      t.timestamps
    end
  end
end
