class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :title, null: false
      t.datetime :date, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
