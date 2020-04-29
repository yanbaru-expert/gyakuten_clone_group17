require 'import.rb'
require 'csv'

namespace :movie_import_csv do
    desc "CSVデータをmoviesテーブルにインポートする"
      task movies: :environment do
        path = File.join Rails.root, "db/csv_data/movie_data.csv"
         # import.rb呼び出し
          list = Import.csv_data(path: path)

          puts "インポート処理を開始"
        begin
          Movie.create!(list)
          puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗::UnknownAttributeError"
      end
    end
end
  