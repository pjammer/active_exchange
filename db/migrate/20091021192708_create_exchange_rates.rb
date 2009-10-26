class CreateExchangeRates < ActiveRecord::Migration
  def self.up
    create_table :exchange_rates do |t|
      t.string :currency
      t.float :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :exchange_rates
  end
end
