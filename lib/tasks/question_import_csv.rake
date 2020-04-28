require 'import.rb'
require 'csv'

namespace :question_import_csv do
    desc "CSVデータをquestionテーブルにインポートする"
    task questions: :environment do
        path = File.join Rails.root, "db/csv_data/question_data.csv"
        # import.rb呼び出し
        list = Import.csv_data(path: path)
        
        puts "インポート処理を開始"
        begin
            Question.create!(list)
            puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
            puts "インポートに失敗:UnknownAttributeError"
        end
    end
end
