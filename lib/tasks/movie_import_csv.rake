require 'import.rb'
require 'csv'

namespace :movie_import_csv do
    desc "CSVデータをインポートするタスク"
      task movies: :environment do

        path = File.join Rails.root, "db/csv_data/movie_data.csv"

        list = []
        CSV.foreach(path, headers: true) do |row|
          list << {
            title: row["title"],
            url: row["url"],
          }
        end

          puts "インポート処理を開始"
  
        begin
          Movie.create!(list)
          puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗::UnknownAttributeError"
      end
    end
end
  