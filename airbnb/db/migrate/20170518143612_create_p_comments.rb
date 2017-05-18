class CreatePComments < ActiveRecord::Migration[5.1]
  def change
    create_table :p_comments do |t|
      t.string :content

      t.timestamps
    end
  end
end
