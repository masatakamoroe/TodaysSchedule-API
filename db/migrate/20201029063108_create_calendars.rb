class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :id
      t.string :title
      t.datetime :date
      t.datetime :created_at
      t.datetime :updated_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
