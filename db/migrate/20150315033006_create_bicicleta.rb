class CreateBicicleta < ActiveRecord::Migration
  def change
    create_table :bicicleta do |t|
      t.string :marca
      t.decimal :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
