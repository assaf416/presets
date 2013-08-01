class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :subdomain
      t.string :picture_url
      t.string :plays_intruments
      t.string :liked_generes
      t.string :location
      t.string :sounds_like
      t.string :password_digest
      t.boolean :admin
      t.integer :tenant_id
      t.timestamps
    end
    add_index :users, :tenant_id
  end
end
