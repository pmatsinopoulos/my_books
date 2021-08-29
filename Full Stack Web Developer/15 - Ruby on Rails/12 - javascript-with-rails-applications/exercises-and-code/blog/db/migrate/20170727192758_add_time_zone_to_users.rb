# File: db/migrate/20170727192758_add_time_zone_to_users.rb
#
class AddTimeZoneToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :time_zone, :string, default: Rails.application.config.time_zone, null: false
  end
end
