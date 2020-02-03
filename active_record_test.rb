require "active_record"

class User < ActiveRecord::Base
  # テーブルを明示したい場合は以下の通り
  # self.table_name = "users"
end

ActiveRecord::Base.establish_connection(
  # ===== Setting for PostgreSQL
  # :adapter  => "postgresql",
  # :host     => "localhost",
  # :username => "babie",
  # :password => "",
  # :database => "RLR_DB"

  # ===== Setting for Sqlite3
  adapter: "sqlite3",
  database: "foo",
)

users = User.all
users.each do |user|
  puts user.name
end
