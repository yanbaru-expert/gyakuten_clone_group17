require 'import.rb'
require 'csv'

namespace :import_csv do
  desc "CSVファイルをaws_textsにテーブルにインポートする"

  task aws_texts: :environment do
    # インポートファイルの指定
    path = File.join Rails.root, "db/csv_data/aws_text_data.csv"

    # import.rb呼び出し
    list = Import.csv_data(path: path)

    puts "インポート処理開始"
    
    # テーブルに登録
    begin
      AwsText.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポート失敗：UnknownAttributeError"
    end
  end
end
