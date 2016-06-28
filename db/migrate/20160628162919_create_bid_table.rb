class CreateBidTable < ActiveRecord::Migration
  def change
    create_table   :bids do |t|
      t.references :user, index: true, name: "user_id_ix"
      t.references :item, index: true, name: "item_id_ix"
      t.decimal    :value, null: false, scale: 2
      t.boolean    :winning_bid, default: false

      t.timestamps(null: false)
    end
  end
end
