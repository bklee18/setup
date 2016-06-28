class CreateItemsTags < ActiveRecord::Migration
  def change
    create_table   :items_tags do |t|
      t.integer    :item_id
      t.integer    :tag_id

      t.timestamps(null: false)
    end
  end
end
