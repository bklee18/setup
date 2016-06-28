class CreateItemTable < ActiveRecord::Migration
  def change
    create_table   :items do |t|
      t.string     :title, null: false
      t.text       :description, null: false
      t.datetime   :expiration, null: false
      t.references :seller, null: false

      t.timestamps(null: false)
    end
  end
end
