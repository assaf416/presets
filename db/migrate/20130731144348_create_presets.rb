class CreatePresets < ActiveRecord::Migration
  def change
    create_table :presets do |t|
      t.integer :user_id
      t.string :name, :sounds_like, :generes
      t.string :url
      t.integer :instrument_id
      t.integer :tenant_id
      t.boolean :smaple,:loop,:soundfont,:synth,:private
      t.timestamps
    end
    add_index :presets, :user_id
    add_index :presets, :instrument_id
    add_index :presets, :tenant_id
  end
end
