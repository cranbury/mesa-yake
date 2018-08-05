class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :img
      t.timestamps
    end

    create_table :mesas do |t|
      t.string :name
      t.integer :restaurant_id
      t.integer :seats
      t.boolean :abierto

      t.timestamps
    end

    create_table :meals do |t|
      t.integer :mesa_id
      t.datetime :end_time

      t.timestamps
    end

    create_table :ordens do |t|
      t.integer :meal_id

      t.timestamps
    end

    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :precio

      t.timestamps
    end

    create_table :modifiers do |t|
      t.string :name
      t.integer :product_id
      t.decimal :precio_adicional

      t.timestamps
    end

    create_table :sizes do |t|
      t.string :name
      t.integer :product_id
      t.decimal :precio

      t.timestamps
    end

    create_table :orden_products do |t|
      t.integer :product_id
      t.integer :orden_id
      t.integer :quantity
      t.boolean :gratis, :null => false, :default => false

      t.timestamps
    end

    create_table :modify_ordens do |t|
      t.integer :mod_id
      t.string :mod_type
      t.integer :orden_product_id

      t.timestamps
    end

    create_table :meseros do |t|
      t.string :name

      t.timestamps
    end

    create_table :shifts do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :restaurant_id

      t.timestamps
    end

    create_table :mesero_meals do |t|
      t.integer :meal_id
      t.integer :mesero_id

      t.timestamps
    end

  end
end
