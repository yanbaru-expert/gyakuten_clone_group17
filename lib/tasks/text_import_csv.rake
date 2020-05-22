require 'import.rb'
require 'csv'
namespace :text_import_csv do
    desc "CSVデータをtextsテーブルにインポートする"
    task texts: :environment do
        path = File.join Rails.root, "db/csv_data/text_data.csv"
        
        list = Import.csv_data(path: path)
        puts "インポート処理を開始"
        begin
            Text.create!(list)
            puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
            puts "インポートに失敗:UnknownAttributeError"
        end
    end
end
