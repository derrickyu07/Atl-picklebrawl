class CreateTournaments < ActiveRecord::Migration[7.1]
  def change
    create_table :tournaments do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
