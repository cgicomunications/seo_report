class CreatePhase5 < ActiveRecord::Migration
  def change
    create_table :phase5s do |t|
      t.string   :mobile_responsive
      t.string   :mobile_contact_info
      t.string   :mobile_phone_number
      t.string   :mobile_directions
      t.string   :mobile_font_size
      t.string   :mobile_buttons
      t.string   :mobile_navigation
      t.string   :mobile_structure

      t.integer :business_id

      t.timestamps
    end
  end
end
