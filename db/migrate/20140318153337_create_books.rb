class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.references :user

      t.timestamps
    end
  end
end
