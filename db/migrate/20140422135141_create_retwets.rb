class CreateRetwets < ActiveRecord::Migration
  def change
    create_table :retwets do |t|
      t.references :twet
      t.references :user

      t.timestamps
    end
  end
end
