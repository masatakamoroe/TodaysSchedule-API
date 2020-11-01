class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :title
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
