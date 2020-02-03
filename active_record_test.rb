# ============================================================
# Require処理
# DBのテーブルをORマッピングするためのActiveRecord
require "active_record"

require "dotenv"
Dotenv.load

# ============================================================
# モデルクラスの定義
class User < ActiveRecord::Base
  # テーブルを明示したい場合は以下の通り
  # self.table_name = "users"
end

# ============================================================
# メイン処理部
ActiveRecord::Base.establish_connection(
  # ===== Setting for PostgreSQL
  # :adapter  => "postgresql",
  # :host     => "localhost",
  # :username => "babie",
  # :password => "",
  # :database => "RLR_DB"

  # ===== Setting for Sqlite3
  adapter: "sqlite3",
  database: ENV["DATABASE_NAME"],
)

users = User.all
users.each do |user|
  puts user.name
end
