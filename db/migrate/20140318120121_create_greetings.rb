class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.text :visit_email
      t.text :visit_name
      t.text :subject
      t.text :content

      t.timestamps
    end
  end
end
