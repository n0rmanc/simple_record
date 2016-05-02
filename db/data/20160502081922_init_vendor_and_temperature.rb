class InitVendorAndTemperature < SeedMigration::Migration
  def up
    vendor = Vendor.create(name: Faker::Company.name)
    100.times.each do
      vendor.temperatures.create(value: Faker::Number.decimal(2))
    end

  end

  def down
    Vendor.destroy_all
    Temperature.destroy_all
  end
end
