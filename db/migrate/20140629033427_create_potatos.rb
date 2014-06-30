class CreatePotatos < ActiveRecord::Migration
  def change
    create_table :potatos do |t|
      t.string :FMID
      t.string :MarketName
      t.string :Website
      t.string :street
      t.string :city
      t.string :County
      t.string :State
      t.string :zip
      t.string :Season1Date
      t.string :Season1Time
      t.string :Season2Date
      t.string :Season2Time
      t.string :Season3Date
      t.string :Season3Time
      t.string :Season4Date
      t.string :Season4Time
      t.string :x
      t.string :y
      t.string :Location
      t.string :Credit
      t.string :WIC
      t.string :WICcash
      t.string :SFMNP
      t.string :SNAP
      t.string :Bakedgoods
      t.string :Cheese
      t.string :Crafts
      t.string :Flowers
      t.string :Eggs
      t.string :Seafood
      t.string :Herbs
      t.string :Vegetables
      t.string :Honey
      t.string :Jams
      t.string :Maple
      t.string :Meat
      t.string :Nursery
      t.string :Nuts
      t.string :Plants
      t.string :Poultry
      t.string :Prepared
      t.string :Soap
      t.string :Trees
      t.string :Wine
      t.string :updateTime
    end
  end
end
