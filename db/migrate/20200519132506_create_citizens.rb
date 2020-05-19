class CreateCitizens < ActiveRecord::Migration[6.0]
  def change
    create_table :citizens do |t|
      t.string :email
      t.string :password
      t.string :postal_code
      t.string :role, default: 'normal'
      t.string :nric

      t.timestamps
    end
  end
end
