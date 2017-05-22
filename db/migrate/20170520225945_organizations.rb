class Organizations < ActiveRecord::Migration[5.1]
  def change
  	create_table :organizations do |t|
  		t.string :name, null: false
  		t.integer :organizationtype_id, null: false
  		t.text :address1
  		t.text :address2
  		t.string :city
  		t.string :state, null: false
  		t.string :zipcode
  		t.string :country
  		t.string :phone1
  		t.string :phone2
  		t.string :website
  		t.string :fax
  		t.text :hours1mon
  		t.text :hours2tues
  		t.text :hours3wed
  		t.text :hours4thurs
  		t.text :hours5fri
  		t.text :hours6sat
  		t.text :hours7sun
  		t.boolean :nonperishable, default: false
  		t.boolean :refridgerated, default: false
  		t.boolean :fresh_raw, default: false
  		t.boolean :frozen_foods, default: false
  		t.boolean :cooked, default: false
  		t.text :otherinfo
  		t.string :contributername, null: false
  		t.string :contributeremail, null: false
  		t.string :contributerphone, null: false
  		t.timestamps
  	end
  end
end