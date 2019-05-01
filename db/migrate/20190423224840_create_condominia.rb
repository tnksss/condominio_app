class CreateCondominia < ActiveRecord::Migration[5.2]
  def change
    create_table :condominia do |t|

      t.string :name
      t.string :address
      t.string :number
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
