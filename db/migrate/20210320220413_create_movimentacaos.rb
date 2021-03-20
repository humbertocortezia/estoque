class CreateMovimentacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :movimentacaos do |t|
      t.references :produto, foreign_key: true
      t.references :local_armazenamento,  foreign_key: true
      t.string :tipo, :limit => 1
      t.date :data
      t.float :quantidade

      t.timestamps
    end
  end
end
