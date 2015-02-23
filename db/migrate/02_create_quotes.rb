class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :body
      t.string :source
      t.belongs_to :individual, index: true
    end
  end
end