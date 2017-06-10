class CreateAdvetisers < ActiveRecord::Migration
  def change
    create_table :advetisers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
