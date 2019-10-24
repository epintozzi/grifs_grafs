class CreateSleeps < ActiveRecord::Migration[6.0]
  def change
    create_table :sleeps do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.float :duration

      t.timestamps
    end
  end
end
