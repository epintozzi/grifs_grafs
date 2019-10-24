class CreateFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.float :duration
      t.float :amount

      t.timestamps
    end
  end
end
