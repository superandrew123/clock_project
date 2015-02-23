class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :name
      t.string :bio
    end
  end
end