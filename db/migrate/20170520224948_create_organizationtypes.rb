class CreateOrganizationtypes < ActiveRecord::Migration[5.1]
  def change
    create_table :organizationtypes do |t|

      t.timestamps
    end
  end
end
