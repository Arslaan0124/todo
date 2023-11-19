class CreateTolearns < ActiveRecord::Migration[7.1]
  def change
    create_table :tolearns do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
