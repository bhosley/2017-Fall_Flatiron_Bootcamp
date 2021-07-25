class CreateAuthorities < ActiveRecord::Migration
  def change
    create_table :authorities do |t|
      t.string :name
      t.string :field
      t.string :short_summary
      t.string :long_summary
    end
  end
end
