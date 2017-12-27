class CreateFacts < ActiveRecord::Migration[5.1]
  def change
    create_table :facts do |t|
      t.string :text
      t.references :ip, foreign_key: true

      t.timestamps
    end
  end
end
