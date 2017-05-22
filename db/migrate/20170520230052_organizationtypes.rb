class Organizationtypes < ActiveRecord::Migration[5.1]
  def change
  	create_table :organizationtypes do |t|
  		t.string :category
  	end

  	Organizationtype.create(category: "Foodbank")
  	Organizationtype.create(category: "Shelter")
  	Organizationtype.create(category: "Soupkitchen")
  	Organizationtype.create(category: "Othercharity")
  end
end
