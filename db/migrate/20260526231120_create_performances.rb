class CreatePerformances < ActiveRecord::Migration[8.1]
  def change
    create_table :performances do |t|
      t.string :performer
      t.string :title
      t.string :email

      t.timestamps
    end
  end
end
